package com.lin.springdemo.mvc;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HelloWordController {
	
	
	// form attribute
	@RequestMapping("/showForm")
	public String showForm() {
		return "mainPage/helloworld-form";
	}
	
	
	@RequestMapping("/processForm")
	public String processForm() {
		return "mainPage/helloworld";
		//return "mainPage/process-form";
	}
	
	@RequestMapping("/processFormModel")
	public String processFormModel(HttpServletRequest request, Model model) {
		String studentName = request.getParameter("studentName");
		
		studentName = "That's " + studentName.toUpperCase();
		
		model.addAttribute("message", studentName);
		
		return "mainPage/process-form-model";
		//return "mainPage/process-form";
	}
	
	@RequestMapping("/processFormRequestParam")
	public String processFormRequestParam(@RequestParam("studentName") String studentName, Model model) {
		
		studentName = "That's  " + studentName.toUpperCase();
		
		model.addAttribute("message", studentName);
		
		return "mainPage/process-form-model";
		//return "mainPage/process-form";
	}

}
