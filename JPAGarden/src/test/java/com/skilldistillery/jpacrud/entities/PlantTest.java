package com.skilldistillery.jpacrud.entities;

import static org.junit.jupiter.api.Assertions.*;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class PlantTest {
	
	private static EntityManagerFactory emf;
	private EntityManager em;
	private Plant plant;
	
	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("GardenPU");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		plant = em.find(Plant.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		plant = null;
	}

	@Test
	void test1() {
		assertNotNull(plant);
		assertEquals("Tomatoes", plant.getName());
	}

}
