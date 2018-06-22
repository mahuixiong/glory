package top.glory.web.security;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
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
@Component(value = "securityRealm")
public class SecurityRealm extends AuthorizingRealm {
    @Resource
    private UserService userService;
    @Resource
    private RolesService rolesService;

    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
        Object principal = principals.getPrimaryPrincipal();  //获取到登录的用户信息 只是获取账号
        String loginName = String.valueOf(principal);         //把账号转成String形式
        User user = userService.selectByLogin_name(loginName);
        List<Roles> list = rolesService.selectRolesByUserId(user.getRole());
        Set<String> roles = new HashSet<>();
        if (list.size() > 0) {
            for (Roles rs : list) {
                if (RoleSign.ADMIN.equals(rs.getRole()))//系统管理员
                {
                    roles.add(RoleSign.ADMIN);
                }
                if (RoleSign.MESSAGEMAN.equals(rs.getRole()))//信息管理员
                {
                    roles.add(RoleSign.MESSAGEMAN);
                }
                if (RoleSign.CUSTOMERMAN.equals(rs.getRole()))//客户管理员
                {
                    roles.add(RoleSign.CUSTOMERMAN);
                }
                if (RoleSign.MESSAGEROLE.equals(rs.getRole()))//信息权限管理员
                {
                    roles.add(RoleSign.MESSAGEROLE);
                }
                if (RoleSign.SUPERADMIN.equals(rs.getRole()))//超级用户
                {
                    roles.add(RoleSign.CUSTOMER);//客户界面
                    roles.add(RoleSign.ADMIN);//系统管理员
                    roles.add(RoleSign.MESSAGEMAN);//信息管理员
                    roles.add(RoleSign.CUSTOMERMAN);//客户管理员
                    roles.add(RoleSign.MESSAGEROLE);//信息权限管理员
                    roles.add(RoleSign.SUPERADMIN);//超级用户
                }
            }
        } else {
            roles.add(RoleSign.CUSTOMER);          //客户界面
        }
        SimpleAuthorizationInfo authenticationInfo = new SimpleAuthorizationInfo(roles);//创建SimpleAuthorizationInfo，设置reles属性 设置的是界面上的shiro中的name值
        return authenticationInfo;
    }

    @Override//这里的token是从UserController中的login中传过来的  下面获取和位置有关
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
        String loginName = String.valueOf(token.getPrincipal());//获取到名字 前面传过来的 getPrincipal获取第一个参数
        String password = new String((char[]) token.getCredentials());//获取到密码 前面传过来的 getCredentials()获取第二个参数
        System.out.println("name:" + loginName + ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
        System.out.println("password:" + password + ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
        User user = new User();
        user.setLoginName(loginName);//设置用户名
        user.setPassword(password);//设置密码
        final User authentication = userService.authenticationUser(user);//userService.selectupdate方法也可以
        if (authentication == null) {
            System.out.println("asdfdasdfasdfsaffsafasfaadfasfasdfasfasasffffffffffffffffffffffffffffffffffffffffffffffffffffff");
        }
        if (authentication == null) {
            throw new AuthenticationException("用户名或密码错误");
        }
        SimpleAuthenticationInfo authenticationInfo = new SimpleAuthenticationInfo(loginName, password, getName());//创建SimpleAuthenticationInfo 并设置reles属性 比对密码
        System.out.println(authenticationInfo + "???????????????????????????????????????????????????????????????????????????????");
        return authenticationInfo;
    }
}
