package com.lin.springdemo.mvc;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/customer")
public class CustomerController {
	
	
	@RequestMapping("/customerForm")
	public String showCustomerForm(Model theModel ) {

		theModel.addAttribute("customer", new Customer());
		return "customer/customer-form";
	
	}
	
	@RequestMapping("/helloCustomer")
	public String helloCustomer(
			@Valid @ModelAttribute("customer") Customer theCustomer,
			BindingResult theBindingResult) {
		
		
		if (theBindingResult.hasErrors()) {
			return "customer/customer-form";
		} else {
			return "customer/hello-customer";

		}
		
		
	}

}
