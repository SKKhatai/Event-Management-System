package com.example.demo;

import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class CustomeErrorController implements ErrorController {
	@GetMapping("/error")
	public String handleError() {
		return "Try Again letter";
		
	}
	
	public String getErrorPath() {
		return "/error";
	}

}