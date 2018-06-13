package top.glory.test.service;

import java.util.Date;

import javax.annotation.Resource;

import org.junit.Test;

import top.glory.core.feature.test.TestSupport;
import top.glory.core.util.ApplicationUtils;
import top.glory.web.model.User;
import top.glory.web.service.UserService;

public class UserServiceTest extends TestSupport {

    @Resource
    private UserService userService;

//    @Test
    public void test_insert() {
        User model = new User();
        model.setUsername("starzou");
        model.setPassword(ApplicationUtils.sha256Hex("123456"));
        userService.insert(model);
    }

//    @Test
    public void test_10insert() {
        for (int i = 0; i < 10; i++) {
            User model = new User();
            model.setUsername("starzou" + i);
            model.setPassword(ApplicationUtils.sha256Hex("123456"));
            userService.insert(model);
        }
    }

}
