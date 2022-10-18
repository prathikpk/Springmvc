package com.aurionpro.springmvc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/home")
public class HomeController {
	
	@RequestMapping("/show")
	public String showPage() {
		return "home-page";
	}
	
	@RequestMapping("/")
	public String showIndexPage() {
		return "index";
	}
	
	

}
