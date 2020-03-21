package com.skilldistillery.jpacrud.data;

import java.util.List;

import com.skilldistillery.jpacrud.entities.Plant;

public interface GardenDAO {
	
	Plant findById(int id);
	List<Plant>  findAll();
}
