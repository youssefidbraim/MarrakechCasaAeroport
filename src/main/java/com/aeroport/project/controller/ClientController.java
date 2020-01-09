package com.aeroport.project.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.validation.Valid;

import org.springframework.security.core.userdetails.UserDetails;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.aeroport.project.model.Client;
import com.aeroport.project.model.Todo;
import com.aeroport.project.service.IClientService;
import com.aeroport.project.service.ITodoService;

@Controller
public class ClientController {

	@Autowired
	private IClientService clientService;

	@InitBinder
	public void initBinder(WebDataBinder binder) {
		// Date - dd/MM/yyyy
		SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, false));
	}

	

	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String showIndexPage(ModelMap model) {
		model.put("name", getLoggedinUserName());
		return "index";
	}
	
	@RequestMapping(value = "/addclient", method = RequestMethod.GET)
	public String showPage(ModelMap model) {
		model.put("name", getLoggedinUserName());
		return "AddClient";
	}
	
	@RequestMapping(value = "/contact", method = RequestMethod.GET)
	public String showContactPage(ModelMap model) {
		model.put("name", getLoggedinUserName());
		return "contact";
	}
	
	
	@RequestMapping(value = "/addcontact", method = RequestMethod.POST)
	public String addTodo(ModelMap model, @Valid Client client, BindingResult result) {

		if (result.hasErrors()) {
			return "AddClient";
		}

		clientService.saveClient(client);
		return "redirect:/";
	}

	private String getLoggedinUserName() {
		Object principal = SecurityContextHolder.getContext()
				.getAuthentication().getPrincipal();
		
		if (principal instanceof UserDetails) {
			return ((UserDetails) principal).getUsername();
		}
		
		return principal.toString();
	}
	
}
