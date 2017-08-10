package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class URIController {
	@RequestMapping(value="")
	public String test(){
		return "index";
	}
}
