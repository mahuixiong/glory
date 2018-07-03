package top.glory.web.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import top.glory.web.model.User;
import top.glory.web.model.UserExample;

public interface UserMapper {
    //按照账号密码获取信息
    User authenticationUser(@Param("user") User user);
    //按照账号获取信息
    User selectByLogin_name(@Param("loginName") String loginName);
    //注册用户
    int insert(User user);
    //忘记密码
    int updatepwd(User user);

    User selectupdate(User user);

    int countByExample(UserExample example);

    int deleteByExample(UserExample example);

    int deleteByPrimaryKey(Integer id);

    int insertSelective(User record);

    List<User> selectByExample(UserExample example);

    User selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") User record, @Param("example") UserExample example);

    int updateByExample(@Param("record") User record, @Param("example") UserExample example);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
}