package com.lin.springdemo.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/request")
public class RequestController {
	
	@RequestMapping("/displayForm")
	public String displayForm() {
		return "request/display-form";
		
	}

}
