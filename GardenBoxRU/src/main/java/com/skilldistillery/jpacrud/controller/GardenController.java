package com.skilldistillery.jpacrud.controller;

import java.util.List;

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
		return "WEB-INF/index.jsp";
	}
	
	// finds Plant by keyword
	@RequestMapping(path = "keywordSearch.do", method = RequestMethod.GET)
	public String keywordSearch(String keyword, Model model) {
		if (keyword == null || keyword.isEmpty()) {
			return "/WEB-INF/nSearch.jsp";
		}
		List<Plant> plant = dao.findPlantByKeyword(keyword);
		if (plant.size() != 0) {
			model.addAttribute("plant", plant);
			return "/WEB-INF/keywordFind.jsp";
		} else {
			return "/WEB-INF/nSearch.jsp";
		
		}
	}
	
	//Displays successful or unsuccessful db search
	@RequestMapping(path = "getPlant.do", method = RequestMethod.GET, params = "pid")
	public String showPlant(@RequestParam Integer pid, Model model) {
		String viewName = "WEB-INF/pSearch.jsp";
		if (pid == null) {
			return "WEB-INF/nSearch.jsp";
		}
		Plant plant = dao.findById(pid);
		if (plant == null) {
			return "WEB-INF/nSearch.jsp";
		}
		model.addAttribute("plant", plant);

		return viewName;
	}

	// updates Plant
	@RequestMapping(path = "updatePlant.do", method = RequestMethod.POST)
	public String updatePlant(Plant plant, Model model) {
		if (dao.updatePlant(plant)) {
			model.addAttribute("plant", plant);
			return "WEB-INF/updateSuccess.jsp";
		} else {
			return "WEB-INF/updateFail.jsp";
		}
	}

	// deletes Plant by id
	@RequestMapping("plantDelete.do")
	public String deletePlant(@RequestParam("Delete") int plantId) {
		if (dao.deletePlant(plantId)) {
			return "WEB-INF/deleteSuccess.jsp";
		} else {
			return "WEB-INF/deleteFail.jsp";
		}
	}

	// user adds FILM
	@RequestMapping(path = "addPlant.do", method = RequestMethod.POST)
	public String addPlant(Plant plant, Model model) {
		Boolean addPos = dao.addPlant(plant);
		if(addPos) {
			model.addAttribute("plant", plant);
			return "WEB-INF/insertSucceed.jsp";
		}
		else {
			return "WEB-INF/insertFail.jsp";
		}
	}
}
