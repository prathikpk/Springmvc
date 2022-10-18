package com.aurionpro.springmvc;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/test")
public class TestController {

	@RequestMapping("/show")
	public String showPage() {
		return "test-page";
	}
	
	@RequestMapping("/showForm")
	public String showFormPage() {
		return "test-form";
	}

	@RequestMapping("/processForm")
	public String processForm(HttpServletRequest request,Model model) {
		String studentName=request.getParameter("studentName");
		model.addAttribute("student",studentName);
		return "form-details";

	}
	
	@RequestMapping("/processForm2")
	public String processForm2(@RequestParam("studentName") String studentName,Model model) {
		model.addAttribute("student",studentName);
		return "form-details";

	}
}
