package com.aeroport.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TestController {

	public static String uploadDirectory = System.getProperty("user.dir")+"/uploads";
	
	@RequestMapping("/uploadimage")
	public String UploadImage(Model model) {
		return "uploadImage";
	}
}
