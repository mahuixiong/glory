package top.glory.test.dao;

import java.util.List;

import javax.annotation.Resource;

import org.junit.Test;

import top.glory.core.feature.orm.mybatis.Page;
import top.glory.core.feature.test.TestSupport;
import top.glory.web.dao.UserMapper;
import top.glory.web.model.User;
import top.glory.web.model.UserExample;

public class UserMapperTest extends TestSupport {
    @Resource
    private UserMapper userMapper;

    @Test
    public void test_selectByExampleAndPage() {
        start();
        Page<User> page = new Page<>(1, 3);
        UserExample example = new UserExample();
        example.createCriteria().andIdGreaterThan(0L);
        final List<User> users = userMapper.selectByExampleAndPage(page, example);
        for (User user : users) {
            System.err.println(user);
        }
        end();
    }
}
