package com.yangyouwang.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yangyouwang.entity.User;

@Controller
public class IndexController {  

	@RequestMapping("/hello")  
	public String helloWorld(Model model) {  
		String username = "Hello Freemarker!";  
		//将数据添加到视图数据容器中  
		model.addAttribute("username",username);  
		model.addAttribute("userList",this.prepareUserList());
		return "Hello.ftl";  
	}  

	public List<User> prepareUserList(){
		List<User> list =new ArrayList<User>();
		for (int i = 0; i < 5; i++) {
			User item = new User();
			item.setName("admin :"+i);
			item.setBirthday(new Date());
			list.add(item);
		}
		return list;
	}
}  