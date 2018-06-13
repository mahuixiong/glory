package top.glory.web.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import top.glory.core.feature.orm.mybatis.Page;
import top.glory.core.generic.GenericDao;
import top.glory.web.model.User;
import top.glory.web.model.UserExample;

/**
 * 用户Dao接口
 * 
 * @author StarZou
 * @since 2014年7月5日 上午11:49:57
 **/
public interface UserMapper extends GenericDao<User, Long> {


    /**
     * 用户登录验证查询
     * 
     * @param record
     * @return
     */
    User authentication(@Param("record") User record);

    /**
     * 分页条件查询
     * 
     * @param page
     * @param example
     * @return
     */
    List<User> selectByExampleAndPage(Page<User> page, UserExample example);
    
    /**
     * 根据名字查用户信息
     */

	User selectByLogin_name(@Param("login_name")String login_name);
}