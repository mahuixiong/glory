package top.glory.web.service;

import org.apache.ibatis.annotations.Param;
import top.glory.web.model.User;

import java.util.List;

public interface UserService {
    //按照账号密码获取信息
    User authenticationUser(@Param("user") User user);
    //按照账号获取信息
    User selectByLogin_name(@Param("loginName") String loginName);
    //注册用户
    int insert(User user);
    //忘记密码
    int updatepwd(User user);

    User selectupdate(User user);
}
