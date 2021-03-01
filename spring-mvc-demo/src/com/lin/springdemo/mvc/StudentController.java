package com.lin.springdemo.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/student")
public class StudentController {
	
	@RequestMapping("/studentForm")
	public String showStudentForm(Model theModel) {
		
		Student theStudent = new Student();
		
		theModel.addAttribute("student", theStudent);
		
		
		return "student/student-form";
	}
	
	@RequestMapping("/helloStudent")
	public String helloStudent(@ModelAttribute("student") Student theStudent) {
		
		System.out.println("theStudent: " + theStudent.getFirstName() +
				            "," + theStudent.getLastName());
		
		return "student/hello-student";
	}

}
