package top.glory.web.service.impl;

import org.springframework.stereotype.Service;
import top.glory.web.dao.UserMapper;
import top.glory.web.model.User;
import top.glory.web.service.UserService;

import javax.annotation.Resource;
import java.util.List;
@Service
public class UserServiceImpl implements UserService {
    @Resource
    private UserMapper userMapper;
    @Override
    public User authenticationUser(User user) {
        return userMapper.authenticationUser(user);
    }

    @Override
    public User selectByLogin_name(String loginName) {
        return userMapper.selectByLogin_name(loginName);
    }

    @Override
    public int insert(User user) {
        return userMapper.insert(user);
    }

    @Override
    public int updatepwd(User user) {
        return userMapper.updatepwd(user);
    }

    @Override
    public User selectupdate(User user) {
        return userMapper.selectupdate(user);
    }

    @Override
    public List<User> showAllData(User user) {
        return userMapper.showAllData(user);
    }

    @Override
    public User showUserById(Integer id) {
        return userMapper.showUserById(id);
    }

    @Override
    public int deleteById(Integer id) {
        return userMapper.deleteById(id);
    }

    @Override
    public int updateUser(User user) {
        return userMapper.updateUser(user);
    }

    @Override
    public int updateAllUser(User user) {
        return userMapper.updateAllUser(user);
    }

    @Override
    public int updatePasswordById(User user) {
        return userMapper.updatePasswordById(user);
    }

    @Override
    public List<User> selectAllUser(User user) {
        return userMapper.selectAllUser(user);
    }

    @Override
    public int updatecheckStatus(User user) {
        return userMapper.updatecheckStatus(user);
    }


}
