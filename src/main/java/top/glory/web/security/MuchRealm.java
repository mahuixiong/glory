package top.glory.web.security;

import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.springframework.stereotype.Component;
import top.glory.web.model.Roles;
import top.glory.web.model.User;
import top.glory.web.service.RolesService;
import top.glory.web.service.UserService;

import javax.annotation.Resource;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * 用户身份验证,授权 Realm 组件
 *
 * @author StarZou
 * @since 2014年6月11日 上午11:35:28
 **/
@Component(value = "muchRealm")
public class MuchRealm extends AuthorizingRealm {
    @Resource
    private UserService userService;
    @Resource
    private RolesService rolesService;

    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
        Object principal=principals.getPrimaryPrincipal();  //获取到登录的用户信息 只是获取账号
        String loginName=String.valueOf(principal);         //把账号转成String形式
        System.out.println(principal+"--------------------");
        System.out.println(loginName+"--------------------");
        User user=userService.selectByLogin_name(loginName);
        List<Roles> list=rolesService.selectRolesByUserId(user.getRole());
        Set<String> roles=new HashSet<>();
        if(list.size()>0)
        {
            for(Roles rs:list)
            {
                if("admin".equals(rs.getRole()))//系统管理员
                {
                    roles.add("admin");
                }
                if("messageman".equals(rs.getRole()))//信息管理员
                {
                    roles.add("messageman");
                }
                if("customerman".equals(rs.getRole()))//客户管理员
                {
                    roles.add("customerman");
                }
                if("messagerole".equals(rs.getRole()))//信息权限管理员
                {
                    roles.add("messagerole");
                }
                if("superadmin".equals(rs.getRole()))//超级用户
                {
                    roles.add("customer");//客户界面
                    roles.add("admin");//系统管理员
                    roles.add("messageman");//信息管理员
                    roles.add("customerman");//客户管理员
                    roles.add("messagerole");//信息权限管理员
                    roles.add("superadmin");//超级用户
                }
            }
        }
        else{
            roles.add("customer");          //直接加客户界面
        }
        SimpleAuthorizationInfo authenticationInfo = new SimpleAuthorizationInfo(roles);//创建SimpleAuthorizationInfo，设置reles属性 设置的是界面上的shiro中的name值
        return authenticationInfo;
    }

    @Override//这里的token是从UserController中的login中传过来的  下面获取和位置有关
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
        UsernamePasswordToken uptoken=(UsernamePasswordToken)token;
        String loginName=uptoken.getUsername();
        System.out.println(loginName+"......");
        final User authentication=userService.selectByLogin_name(loginName);
        if(authentication==null)
        {
            throw new AuthenticationException("用户名或密码错误");
        }
        String password=authentication.getPassword();//数据库密码
        ByteSource credentialsSalt=ByteSource.Util.bytes(loginName);//用当前用户名设置盐值
        System.out.println(password+"......");
        System.out.println(credentialsSalt+"......");
        System.out.println(getName()+"........");
        SimpleAuthenticationInfo authenticationInfo = new SimpleAuthenticationInfo(loginName,password,credentialsSalt,getName());//这里的密码应该是数据库中的密码
//        SimpleAuthenticationInfo(principal,credentials,credentialsSalt,realname);
        /*
         * principal 认证的实体信息 可以是loginName 也可以是数据库对应的用户实体类
         * credentials 数据库中的密码
         * realname 就是getname
         */
//        SimpleHash(hashAlgorithmName,credentials,salt,hashIterations);
         /*
          * hashAlgorithmName 加密方法 "MD5" "SHAI" String
          * credentials 密码
          * salt 盐值
          * hashIterations 加密次数
          */
        return authenticationInfo;
    }

    public static void main(String[] args) {
        String hashAlgorithmName="md5";
        Object credentials="123456";
        Object salt=ByteSource.Util.bytes("admin123");
        int hashIterations=1024;
        SimpleHash simpleHash=new SimpleHash(hashAlgorithmName,credentials,salt,hashIterations);
        System.out.println(simpleHash+"/////////////////////////////////////////////////..s");
        //965db6be99a2254cc7b78710322d8bf5
    }
}
