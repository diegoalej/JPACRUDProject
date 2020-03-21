package com.skilldistillery.jpacrud.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.jpacrud.entities.Plant;


@Service
@Transactional
public class GardenDAOImpl implements GardenDAO {
	
	@PersistenceContext
	EntityManager em;
	
	@Override
	public Plant findById(int id) {
		return em.find(Plant.class, id);
	}

	@Override
	public List<Plant> findAll() {
		String jpql = "SELECT p from Plant p";
		return em.createQuery(jpql, Plant.class).getResultList();
	}

}
