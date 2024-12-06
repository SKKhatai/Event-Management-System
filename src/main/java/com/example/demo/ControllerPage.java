package com.example.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.entities.User;
import com.example.demo.services.UserServices;


@Controller
public class ControllerPage {
	
	@Autowired
	private UserServices userService;
	
	
	@GetMapping("/regPage")
	public String OpenRegPage(Model model) {
		model.addAttribute("user",new User());
		return "register";
	}
	
	@PostMapping("/regForm")
	public String submitRegForm(@ModelAttribute ("user") User user , Model model) {
		
		boolean status=userService.registerUser(user);
		
		if(status) {
			model.addAttribute("successMessage","User Register Successfully");
		}
		else {
			model.addAttribute("errorMessage","User Register Unsuccessfull!!!");
		}
		return "register";
	}
	
	@GetMapping("/login")
	public String showLoginPage() {
		return "login";
	}
	
	@PostMapping("/login")
	public String loginUser(@RequestParam String username,@RequestParam String password , Model model) {
		User user=((UserServices) userService).findByUsernameAndPassword(username,password);
		
		if(user!=null) {
			return "welcome";
		}
		else {
			model.addAttribute("message","Invalid username or password");
			return "login";
		}
	}
	
	
	
	
	

}
