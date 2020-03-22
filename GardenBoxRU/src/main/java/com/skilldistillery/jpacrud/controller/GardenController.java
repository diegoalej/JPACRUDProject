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
	public String showPlant(@RequestParam Integer pid, Model model) {
		String viewName = "pSearch";
		Plant plant = dao.findById(pid);
		if (plant == null) {
			return "nSearch";
		}
		model.addAttribute("plant", plant);

		return viewName;
	}
	
	// updates Plant
	@RequestMapping(path = "updatePlant.do", method = RequestMethod.POST)
	public String updatePlant(Plant plant, Model model) {
		if (dao.updatePlant(plant)) {
			model.addAttribute("plant", plant);
			return "updateSuccess";
		} else {
			return "updateFail";
		}
	}
	
	// deletes Plant by id
		@RequestMapping("plantDelete.do")
		public String deletePlant(@RequestParam("Delete") int plantId) {
			if (dao.deletePlant(plantId)) {
				return "deleteSuccess";
			} else {
				return "deleteFail";
			}
		}
}
