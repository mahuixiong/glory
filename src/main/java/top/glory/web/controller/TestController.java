package top.glory.web.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import top.glory.core.entity.JSONResult;
import top.glory.web.model.User;

@Controller
@RequestMapping(value = "/user")

public class TestController {

	/**
	 * 用返回的结果集
	 * 访问路径http://127.0.0.1:端口/项目名/rest/user/tttt2
	 * @return
	 */
	@RequestMapping(value = "/tttt", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> test(){
		System.out.println("测试");
		Map<String, Object> map = new HashMap<String, Object>();
		List<User> list = new ArrayList<User>();
		
		User user = new User();
		user.setLogin_name("王老虎");
		user.setPassword("sdfasfafsd");
		
		User user2 = new User();
		user2.setLogin_name("zhang老虎");
		user2.setPassword("sdfassffsd");
		
		list.add(user);
		list.add(user2);
		map.put("list", list);
		map.put("flag", 1);
		map.put("msg", "成功了！！！");
		return map;
		
	}
	
	
	/**
	 * 返回json格式数据
	 * @return
	 */
	@RequestMapping("/tttt2")
	@ResponseBody
	public JSONResult<Object> test2(){
		
		JSONResult<Object> jsonResult = new JSONResult<Object>();
		System.out.println("测试");
		//Map<String, Object> map = new HashMap<>();
		List<User> list = new ArrayList<User>();
		
		User user = new User();
		user.setLogin_name("王老虎");
		user.setPassword("sdfasfafsd");
		
		User user2 = new User();
		user2.setLogin_name("王老虎");
		user2.setPassword("sdfassffsd");
		
		list.add(user);
		list.add(user2);
		/*map.put("list", list);
		map.put("flag", 1);
		map.put("msg", "成功了！！！");*/
		
		
		jsonResult.setData(list);
		jsonResult.setMessage("成功了！！");
		jsonResult.setStatusCode(0);
		boolean success = true;
		jsonResult.setSuccess(success);
		return jsonResult;
		
	}
}
