package com.lin.springdemo.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
	// Index page 
	@RequestMapping("/")
	public String showPage() {
		return "mainPage/index";
	}

}
