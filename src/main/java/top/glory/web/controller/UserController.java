package top.glory.web.controller;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.util.ByteSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import top.glory.web.model.User;
import top.glory.web.service.UserService;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.security.Security;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("user")
public class UserController {
    @Resource
    private UserService userService;

    /*
     *用户登录
     */
    @RequestMapping(value = "login", method = RequestMethod.GET)
    public String login(@Valid User user, BindingResult result, Model model, HttpServletRequest request,Integer remeber) {
        try {
            Subject subject = SecurityUtils.getSubject();//获取一个subject对象
            if (subject.isAuthenticated())//测试用户是否认证，即是否登录
            {
                return "redirect:/rest/page/superadmin";
            }
            if (result.hasErrors())//应该是有错误从新跳转界面 母鸡
            {
                model.addAttribute("error", "参数错误");
                return "login";
            }
            System.out.println(user.getLoginName() + user.getPassword() + "===================================================================================");
            UsernamePasswordToken token = new UsernamePasswordToken(user.getLoginName(), user.getPassword());//把用户密码封装成UsernamePasswordToken对象
            if (remeber == new Integer(1))
            {
                System.out.println("0000000000000000000");
                token.setRememberMe(true);
            }
            subject.login(token);//执行登录 把这个token传到SecurityRealm的doGetAuthenticationInfo中
//            subject.login(new UsernamePasswordToken(user.getLoginName(),user.getPassword()));//简写
            //验证成功 在session中保存用户信息
            final User authUserInfo = userService.selectByLogin_name(user.getLoginName());
            request.getSession().setAttribute("userInfo", authUserInfo);
        } catch (AuthenticationException e) {
            model.addAttribute("error", "用户名或密码错误");
            return "login";
        }
        return "redirect:/rest/page/superadmin";
    }

    /*
     * 用户登出
     */
    @RequestMapping("logout")
    public String logout(HttpSession session) {
        session.removeAttribute("userInfo");//移除session
        Subject subject = SecurityUtils.getSubject();
        subject.logout();
        return "login";
    }

    /*
     * 注册用户
     */
    @RequestMapping("register")
    public String register(User user) {
        //===================用系统默认加密方法时这段代码注释掉 ===================================
        String hashAlgorithmName = "MD5";                           //加密方法 md5大写小写没影响
        Object credentials = user.getPassword();                    //密码
        Object salt = ByteSource.Util.bytes(user.getLoginName());   //设置盐值  通过名字
        int hashIterations = 1024;                                  //设置次数
        String newPassword = new SimpleHash(hashAlgorithmName, credentials, salt, hashIterations).toHex();//把密码加密
        user.setPassword(newPassword);                            //把加密的密码存到user中
        //======================================================
//        User authentication=userService.selectByLogin_name(user.getLoginName());//做的用户判断 如果账号已经注册 不能注册 由于js里设置了 这里就没用了
//        if(authentication==null)
//        {
        user.setApplicationTime(new Date());//设置创建时间
        user.setCheckStatus(0);//设置审核通过 0未审核 1通过 2驳回
        user.setCreateTime(new Date());//创建时间
//        user.setCustomerPower();//用户权限
//        角色：1系统管理员，2信息管理员，3客户管理员，4信息权限管理员，5客户', role
        userService.insert(user);//成功返回1 不成功返回0
        System.out.println(user.getPassword() + "///////////////////////////////////////////");
        return "redirect:/rest/page/login";
//        }
//        return "redirect:/rest/page/register";
    }

    /*
     * 判断界面显示
     */
    @RequestMapping("judge")
    @ResponseBody//不能转换String和null 所以这里设置的int类型
    public int judge(String login_name)//这里的名字要和ajax中 data设置的一样
    {
        int i = 0;
        User judge = userService.selectByLogin_name(login_name);
        if (judge == null)//如果等于null说明数据库中没有当前的账号 则当前账号就可以创建
        {
            i = 1;
        }
        return i;
    }

    @RequestMapping("forgetpwd")
    public String forgetpwd(User user)
    {
        System.out.println(user.getPassword()+"...");
        String hashAlgorithmName = "MD5";                           //加密方法 md5大写小写没影响
        Object credentials = user.getPassword();                    //密码
        Object salt = ByteSource.Util.bytes(user.getLoginName());   //设置盐值  通过名字
        int hashIterations = 1024;                                  //设置次数
        String newPassword = new SimpleHash(hashAlgorithmName, credentials, salt, hashIterations).toHex();//把密码加密
        user.setPassword(newPassword);                            //把加密的密码存到user中
        userService.updatepwd(user);
        return "redirect:/rest/page/login";
    }

    @RequestMapping("selectupdate")
    @ResponseBody
    public int selectupdate(@RequestBody User user)//这里的名字要和ajax中 data设置的一样
    {
        int i=0;
        User show=userService.selectupdate(user);
        if(show==null)
        {
            i=1;
        }
        return i;
    }
}
