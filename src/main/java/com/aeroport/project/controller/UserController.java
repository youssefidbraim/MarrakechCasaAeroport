package com.aeroport.project.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


import com.aeroport.project.model.User;
import com.aeroport.project.service.IUserService;

@Controller
public class UserController {

	@Autowired
	private IUserService userservice;
	
	@RequestMapping(value = "/list-client", method = RequestMethod.GET)
	public String showTodos(ModelMap model) {
		
		model.put("clients", userservice.getUsers());
		
		return "clients";
	}

	

	@RequestMapping(value = "/addclient", method = RequestMethod.GET)
	public String showAddTodoPage(ModelMap model) {
		model.addAttribute("client", new User());
		return "AddClient";
	}

	@RequestMapping(value = "/delete-client", method = RequestMethod.GET)
	public String deleteTodo(@RequestParam int id) {
		userservice.deleteUser(id);
		// service.deleteTodo(id);
		return "redirect:/list-clients";
	}
	
	

	@RequestMapping(value = "/update-client", method = RequestMethod.GET)
	public String showUpdateTodoPage(@RequestParam int id, ModelMap model) {
		User use = userservice.getUserById(id).get();
		model.put("client", use);
		return "AddClient";
	}

	@RequestMapping(value = "/update-client", method = RequestMethod.POST)
	public String updateTodo(ModelMap model, @Valid User use, BindingResult result) {

		if (result.hasErrors()) {
			return "AddClient";
		}

		
		userservice.updateUser(use);
		return "redirect:/list-client";
	}

	@RequestMapping(value = "/addclient", method = RequestMethod.POST)
	public String addTodo(ModelMap model, @Valid User user, BindingResult result) {

		if (result.hasErrors()) {
			return "AddClient";
		}

		
		userservice.saveUser(user);
		return "redirect:/";
	}
	
	
	
	
}
