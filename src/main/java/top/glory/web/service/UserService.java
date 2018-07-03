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
    //忘记密码js显示
    User selectupdate(User user);
    //用户管理 分页显示 用户名查询
    List<User> showAllData(@Param("user") User user);
    //按id查询 修改界面显示
    User showUserById(@Param("id") Integer id);
    //删除
    int deleteById(@Param("id") Integer id);
    //编辑用户
    int updateUser(User user);
    //个人中心
    int updateAllUser(@Param("record") User user);
    //修改密码
    int updatePasswordById(User user);
    //用户审核
    List<User> selectAllUser(User user);
    //修改审核状态
    int updatecheckStatus(User user);
}
