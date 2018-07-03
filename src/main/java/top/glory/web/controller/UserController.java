package top.glory.web.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
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
import top.glory.web.security.PageSign;
import top.glory.web.service.RolesService;
import top.glory.web.service.UserService;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.security.Security;
import java.text.SimpleDateFormat;
import java.util.*;

@Controller
@RequestMapping("user")
public class UserController {
    @Resource
    private UserService userService;

    @Resource
    private RolesService rolesService;

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
    public String register(User user,String mystarttime,String myendtime) throws Exception{
        //===================用系统默认加密方法时这段代码注释掉 ===================================
        if(user.getLoginName()!=null)
        {
            String hashAlgorithmName = "MD5";                           //加密方法 md5大写小写没影响
            Object credentials = user.getPassword();                    //密码
            Object salt = ByteSource.Util.bytes(user.getLoginName());   //设置盐值  通过名字
            int hashIterations = 1024;                                  //设置次数
            String newPassword = new SimpleHash(hashAlgorithmName, credentials, salt, hashIterations).toHex();//把密码加密
            user.setPassword(newPassword);                            //把加密的密码存到user中
        }
        //======================================================
//        User authentication=userService.selectByLogin_name(user.getLoginName());//做的用户判断 如果账号已经注册 不能注册 由于js里设置了 这里就没用了
//        if(authentication==null)
//        {
        if(mystarttime!=null&&myendtime!=null)
        {
            Date starttime=new SimpleDateFormat("yyyy-MM-dd").parse(mystarttime);//设置开始时间
            Date endtime=new SimpleDateFormat("yyyy-MM-dd").parse(myendtime);//设置结束时间
            user.setStarttime(starttime);
            user.setEndtime(endtime);
        }

        user.setApplicationTime(new Date());//设置创建时间
        user.setCreateTime(new Date());//创建时间
        user.setCheckStatus(0);
        userService.insert(user);//成功返回1 不成功返回0
        System.out.println(user.getPassword() + "///////////////////////////////////////////");
        if(user.getRole()!=null)
        {
            return "redirect:/rest/user/showAllData";
        }
        return "redirect:/rest/page/login";
//        }
//        return "redirect:/rest/page/register";
    }

    /*
     * 判断界面显示
     */
    @RequestMapping("judge")//注册用户的js显示
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
    //忘记密码
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
    //忘记密码的js显示
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

    //显示用户 并分页
    @RequestMapping("showAllData")
    public String showAllData(@Valid  User user,Integer pageNum,Model model)
    {
        pageNum=(pageNum==null)? 1:pageNum;//设置默认查询第一页
        PageHelper.startPage(pageNum, PageSign.pageSize);//设置查询第几页 每页查询几条
        List<User> showAllData=userService.showAllData(user);
        PageInfo<User> pageInfo=new PageInfo<>(showAllData,PageSign.pageSize);//添加到pageInfo中
        Map jsonmap=new HashMap();
        jsonmap.put("page",pageInfo);
        jsonmap.put("role",rolesService.selectRoles());
        model.addAttribute("userlist",jsonmap);
        model.addAttribute("username",user.getUsername());
//        model.addAttribute("userlist",pageInfo); //第一个c:forEach
        return "user-management-index";

    }
    //编辑 显示使用
    @RequestMapping("showUserById")
    public String showUserById(Integer id,Model model)
    {
        System.out.println(id+".........................");
        model.addAttribute("user",userService.showUserById(id));
        return "user-management-modify";

    }
    //编辑用户
    @RequestMapping("updateUser")
    public String updateUser(User user)
    {
        userService.updateUser(user);
        return "redirect:/rest/user/showAllData";
        //965db6be99a2254cc7b78710322d8bf5
    }
    //删除用户
    @RequestMapping("deleteById")
    public String deleteById(Integer id)
    {
        userService.deleteById(id);
        return "redirect:/rest/user/showAllData";
    }
    //个人中心 seeperson显示
    @RequestMapping("showAllUserInfoById")
    public String showAllUserInfoById(Integer id,Model model)
    {
        model.addAttribute("user",userService.showUserById(id));
        return "seeperson";
    }
    //个人中心 person显示
    @RequestMapping("showAllUserInfoById1")
    public String showAllUserInfoById1(Integer id,Model model)
    {
        model.addAttribute("user",userService.showUserById(id));
        return "person";
    }

    //个人中心修改
    @RequestMapping("updateAllUser")
    public String updateAllUser(User user,String mybirthday,HttpServletRequest request) throws Exception
    {
        if(mybirthday!=null)
        {
            user.setBirthday(new SimpleDateFormat("yyyy-MM-dd").parse(mybirthday));
        }
        userService.updateAllUser(user);
        final User authUserInfo = userService.selectByLogin_name(user.getLoginName());
        request.getSession().setAttribute("userInfo", authUserInfo);
        System.out.println("8888888888888888");
        return "redirect:/rest/page/introduction2";
//        return "redirect:/rest/page/superadmin";
    }
    //修改密码
    @RequestMapping("updatePasswordById")
    @ResponseBody
    public int updatePasswordById(Integer id,String pwd,String newpwd)
    {
        User u=userService.showUserById(id);
        int i=0;
        if(pwd!=null&&newpwd==null)
        {
            String hashAlgorithmName = "MD5";                           //加密方法 md5大写小写没影响
            Object credentials = pwd;                    //密码
            Object salt = ByteSource.Util.bytes(u.getLoginName());   //设置盐值  通过名字
            int hashIterations = 1024;                                  //设置次数
            String newPassword = new SimpleHash(hashAlgorithmName, credentials, salt, hashIterations).toHex();//把密码加密
            if(newPassword.equals(u.getPassword()))//判断前台输入的原始密码是否与数据库一致
            {
                i=1;
            }
        }
        System.out.println(newpwd+"///////////");
        if(newpwd!=null)
        {
            String hashAlgorithmName = "MD5";                           //加密方法 md5大写小写没影响
            Object credentials = newpwd;                    //密码
            Object salt = ByteSource.Util.bytes(u.getLoginName());   //设置盐值  通过名字
            int hashIterations = 1024;                                  //设置次数
            String newPassword = new SimpleHash(hashAlgorithmName, credentials, salt, hashIterations).toHex();//把密码加密
            System.out.println(newPassword+"//////////////////////////////");
            User user=new User();
            user.setId(id);
            user.setPassword(newPassword);
            userService.updatePasswordById(user);
            i=2;
        }
        return i;
    }
    //客户审核
    @RequestMapping("selectAllUser")
    public String selectAll(User user,Integer pageNum,Model model)
    {

        System.out.println(user.getCheckStatus()+"....");
        System.out.println(user.getCheckStatus());
        pageNum=pageNum==null? 1:pageNum;//设置默认查询第一页
        PageHelper.startPage(pageNum,PageSign.pageSize);//设置每页查询条数
        List<User> selectAllUser=userService.selectAllUser(user);
        PageInfo<User> pageInfo=new PageInfo<>(selectAllUser,PageSign.pageSize);
//        List<User> list = pageInfo.getList();
//        for (User u: list) {
//            System.out.println(u);
//
//        }
        Map<String,Object> jsonmap=new HashMap<String,Object>();
        jsonmap.put("user",pageInfo);
        model.addAttribute("jsonmap",jsonmap);
        model.addAttribute("username",user.getUsername());
        model.addAttribute("company",user.getCompany());
        model.addAttribute("checkStatus",user.getCheckStatus());
        return "customerList";
    }
    //客户信息审核
    @RequestMapping("selectAllUser1")
    public String selectAll1(User user,Integer pageNum,Model model)
    {
        System.out.println(user.getCheckStatus()+"....");
        pageNum=pageNum==null? 1:pageNum;//设置默认查询第一页
        PageHelper.startPage(pageNum,PageSign.pageSize);//设置每页查询条数
        List<User> selectAllUser=userService.selectAllUser(user);
        PageInfo<User> pageInfo=new PageInfo<>(selectAllUser,PageSign.pageSize);
        Map<String,Object> jsonmap=new HashMap<String,Object>();
        jsonmap.put("user",pageInfo);
        model.addAttribute("jsonmap",jsonmap);
        model.addAttribute("username",user.getUsername());
        model.addAttribute("company",user.getCompany());
        model.addAttribute("checkStatus",user.getCheckStatus());
        return "infomanagerList";
    }
    //审核里显示
    @RequestMapping("showUserById1")
    public String showUserById1(Integer id,Model model)
    {
        model.addAttribute("user",userService.showUserById(id));
        return "customerExamine";
    }

    @RequestMapping("updatecheckStatus")
    public String updatecheckStatus(User user)
    {
        userService.updatecheckStatus(user);
        return "redirect:/rest/user/selectAllUser";
    }
}
