package com.skilldistillery.jpacrud.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.jpacrud.data.GardenDAO;

@Controller
public class GardenController {
	
	@Autowired
	private GardenDAO dao;

	@RequestMapping(path= {"/", "home.do"})	
	public String index(Model model) {
		model.addAttribute("plant", dao.findAll());
		return "index";
	}
}
