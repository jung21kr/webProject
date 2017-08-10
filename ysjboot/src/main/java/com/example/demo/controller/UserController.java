package com.example.demo.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.domain.User;
import com.example.demo.mapper.UserMapper;
import com.example.demo.utils.PasswdUtil;

@Controller
@RequestMapping("/user")
public class UserController {
	
	private static final Logger log = LoggerFactory.getLogger(UserController.class);
	@Autowired
	UserMapper um;	



	@RequestMapping(value="/login",method = RequestMethod.POST)
	public ResponseEntity getLogin(@RequestBody User pUser) {
		Map<String,String> hm = new HashMap<String,String>();
		User user = um.getUser(pUser);
		if(user == null){
			hm.put("login", "fail");
			hm.put("msg", "없는 아이디 입니다.");
		    hm.put("url", "");
		}else if(PasswdUtil.matchPasswd(pUser.getPassword(), user.getPassword())){
			hm.put("login", "success");
			hm.put("msg", "로그인 성공");
		    hm.put("url", "/user/list");
		}
		else{
			hm.put("login", "fail");
			hm.put("msg", "비밀번호가 틀렸습니다.");
		    hm.put("url", "");
			
		}
        return new ResponseEntity (hm,HttpStatus.OK);
	}
	
	@RequestMapping(value="/list",method = RequestMethod.GET)
	public String getUserList(@RequestParam Map<String,String> pm, @ModelAttribute User user, Model model) {
		List<User> userList = um.getUserList();
		model.addAttribute("userList",userList);
		return "user/user";
	}

	@RequestMapping(value="/{no}",method = RequestMethod.GET)
	public String getUser(User pUser, Model model) {
		User user = um.getUser(pUser);
		model.addAttribute("user",user);
		return "user/user_view";
	}
	@RequestMapping(value="/del",method = RequestMethod.GET)
	public String deleteUser(@RequestParam Map<String,String> pm, @ModelAttribute User user, Model model) {
		int result = um.deleteUser(user);
		model.addAttribute("delete", result);
		model.addAttribute("nowpage", pm.get("nowpage"));
		model.addAttribute("no", pm.get("no"));
		return "user/user_delete";
	}
	
	@RequestMapping(value="/insert",method = RequestMethod.GET)
	public String addUser(@RequestParam Map<String,String> pm, @ModelAttribute User user, Model model) {
		User result = um.insertUser(user);
		model.addAttribute("insert", result);
		model.addAttribute("nowpage", pm.get("nowpage"));
		return "user/user_add";
	}
	
	
	}


