package com.skilldistillery.jpacrud.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.skilldistillery.jpacrud.data.GardenDAO;
import com.skilldistillery.jpacrud.entities.Plant;

@Controller
public class GardenController {

	@Autowired
	private GardenDAO dao;

	@RequestMapping(path = { "/", "home.do" })
	public String index(Model model) {
		model.addAttribute("plants", dao.findAll());
		return "index";
	}

	@RequestMapping(path = "getPlant.do", method = RequestMethod.GET, params = "pid")
	public String showFilm(@RequestParam Integer pid, Model model) {
		String viewName = "pSearch";
		Plant plant = dao.findById(pid);
		model.addAttribute("plant", plant);

		return viewName;
	}
}
