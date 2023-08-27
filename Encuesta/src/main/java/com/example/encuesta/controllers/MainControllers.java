package com.example.encuesta.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import jakarta.servlet.http.HttpSession;

@Controller
public class MainControllers {
	@RequestMapping("/")
	public String home() {
		return "home.jsp";
	}
	
	@PostMapping("/form")
	public String form(HttpSession sesion,
			@RequestParam(value="name") String name,
			@RequestParam(value="dojo") String dojo,
			@RequestParam(value="language") String language,
			@RequestParam(value="comment", required=false) String comment,
			RedirectAttributes error) {
		if(name.isBlank() || dojo.equals("null") || language.equals("null")) {
			error.addFlashAttribute("error","fields must not be empty");
			return "redirect:/";
		}
		sesion.setAttribute("name", name);
		sesion.setAttribute("dojo", dojo);
		sesion.setAttribute("language", language);
		sesion.setAttribute("comment", comment);
		return "redirect:/result";
	}
	
	@RequestMapping("/reset")
	public String reset(HttpSession sesion) {
		sesion.invalidate();
		return "redirect:/";
	}
	
	@RequestMapping("/result")
	public String result() {
		return "result.jsp";
	}
	
}