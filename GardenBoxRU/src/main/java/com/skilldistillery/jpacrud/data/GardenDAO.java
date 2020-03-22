package com.skilldistillery.jpacrud.data;

import java.util.List;

import com.skilldistillery.jpacrud.entities.Plant;

public interface GardenDAO {
	
	Plant findById(int id);
	List<Plant>  findAll();
	boolean updatePlant(Plant plant);
	boolean deletePlant(int plantId);
	Boolean addPlant(Plant plant);
	public List<Plant> findPlantByKeyword(String keyword);
}
