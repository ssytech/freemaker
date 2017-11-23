package com.yangyouwang.controller;


import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yangyouwang.entity.User;

@Controller
public class Cp1Controller {

	@RequestMapping("/cp1")  
	public String index(Model model) { 
		String title01="基本取值";
		model.addAttribute("title01",title01);
		model.addAttribute("intVar",100); 
		model.addAttribute("longVar",10000L); 
		model.addAttribute("stringVar","我是字符串"); 
		model.addAttribute("doubleVar",3.45d); 
		model.addAttribute("booleanVar",true); 
		//model.addAttribute("dateVar",new Date(new java.util.Date().getDate()));
		model.addAttribute("dateVar",new Date());
		model.addAttribute("nullVar",null);
		String title02="封装类型";
		User user = new User();
		user.setName("freemarker");
		user.setBrief("<font color='red'>我只想早点下班,对不起,你是程序员！</font>");
		model.addAttribute("title02",title02);
		model.addAttribute("userObj",user);
		String title03="集合";
		List<String> list = new ArrayList<String>();
		list.add("java");
		list.add("javascript");
		list.add("nodejs");
		list.add("python");
		Map<String,String> map = new HashMap<String, String>();
		map.put("java", "你好java");
		map.put("python", "你好python");
		map.put("nodejs", "你好nodejs");
		model.addAttribute("title03",title03);
		model.addAttribute("myList",list);
		model.addAttribute("map",map);
		String title04="逻辑";
		model.addAttribute("title04",title04);
		return "cp1.ftl";  
	}  
}
