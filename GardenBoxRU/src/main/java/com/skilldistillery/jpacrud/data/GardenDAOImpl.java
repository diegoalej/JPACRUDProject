package com.skilldistillery.jpacrud.data;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.jpacrud.entities.Plant;

@Service
@Transactional
public class GardenDAOImpl implements GardenDAO {
	private String URL = "jdbc:mysql://localhost:3306/gardendb?useSSL=false";
	private String user = "gardenuser";
	private String pass = "gardenuser";

	@PersistenceContext
	EntityManager em;

	@Override
	public Plant findById(int id) {
		Plant findPlant = em.find(Plant.class, id);
		if (findPlant == null) {
			return null;
		}
		return findPlant;
	}

	@Override
	public List<Plant> findAll() {
		String jpql = "SELECT p from Plant p";
		return em.createQuery(jpql, Plant.class).getResultList();
	}

	// updates FILM with USER INPUT
	public boolean updatePlant(Plant plant) {
		Connection conn = null;
		try {
			conn = DriverManager.getConnection(URL, user, pass);
			conn.setAutoCommit(false); // START TRANSACTION
			System.out.println(plant);
			String jpql = "Update Plant set id=?," // 1
					+ " plant.name=?," // 2
					+ " plant.description=?," // 3
					+ " plant.optimal_sun=?," // 4
					+ " plant.optimal_soil=?," // 5
					+ " plant.planting_considerations=?," // 6
					+ " plant.when_to_plant=?," // 7
					+ " plant.growing_from_seed=?," // 8
					+ " plant.transplanting=?," // 9
					+ " plant.spacing=?," // 10
					+ " plant.watering=?," // 11
					+ " plant.feeding=?," // 12
					+ " plant.other_care=?," // 13
					+ " plant.diseases=?," // 14
					+ " plant.pests=?," // 15
					+ " plant.harvesting=?," // 16
					+ " plant.storage_use=?" // 17
					+ " WHERE plant.id=?"; // 18
			PreparedStatement stmt = conn.prepareStatement(jpql);
			stmt.setInt(1, plant.getId());
			stmt.setString(2, plant.getName());
			stmt.setString(3, plant.getDescription());
			stmt.setString(4, plant.getOptimalSun());
			stmt.setString(5, plant.getOptimalSoil());
			stmt.setString(6, plant.getPlantingConsiderations());
			stmt.setString(7, plant.getWhenToPlant());
			stmt.setString(8, plant.getGrowingFromSeed());
			stmt.setString(9, plant.getTransplanting());
			stmt.setString(10, plant.getSpacing());
			stmt.setString(11, plant.getWatering());
			stmt.setString(12, plant.getFeeding());
			stmt.setString(13, plant.getOtherCare());
			stmt.setString(14, plant.getDiseases());
			stmt.setString(15, plant.getPests());
			stmt.setString(16, plant.getHarvesting());
			stmt.setString(17, plant.getStorageUse());
			stmt.setInt(18, plant.getId());
			int updateCount = stmt.executeUpdate();
			if (updateCount == 1) {
				// COMMIT TRANSACTION
				conn.commit();
				stmt.close();
				return true;
			}
		} catch (Exception sqle) {
			sqle.printStackTrace();
			if (conn != null) {
				try {
					conn.rollback();
				} catch (Exception sqle2) {
					System.err.println("Error trying to rollback");
				}
			}
			return false;
		} finally {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return false;
	}

	// deletes film by ID
	@Override
	public boolean deletePlant(int plantId) {
		Connection conn = null;
		try {
			conn = DriverManager.getConnection(URL, user, pass);
			conn.setAutoCommit(false); // START TRANSACTION
			String sql = "DELETE FROM Plant WHERE id = ?";
			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setInt(1, plantId);
			int updateCount = stmt.executeUpdate();
			conn.commit(); // COMMIT TRANSACTION
			stmt.close();
			return true;
		} catch (Exception sqle) {
			sqle.printStackTrace();
			if (conn != null) {
				try {
					conn.rollback();
				} catch (Exception sqle2) {
					System.err.println("Error trying to rollback");
				}
			}
			return false;
		} finally {
			try {

				conn.close();
			} catch (SQLException e) {

				e.printStackTrace();
			}
		}
	}

	@Override
		public Boolean addPlant(Plant plant) {
			Connection conn = null;
			try {
				conn = DriverManager.getConnection(URL, user, pass);
				conn.setAutoCommit(false); // START TRANSACTION
				String sql = "INSERT into Plant (name,description,optimal_sun,optimal_soil,planting_considerations,when_to_plant, "
							+ "	growing_from_seed,transplanting,spacing,watering,feeding,other_care,diseases,pests,harvesting,storage_use) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
				PreparedStatement stmt = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
				stmt.setString(1, plant.getName());
				stmt.setString(2, plant.getDescription());
				stmt.setString(3, plant.getOptimalSun());
				stmt.setString(4, plant.getOptimalSoil());
				stmt.setString(5, plant.getPlantingConsiderations());
				stmt.setString(6, plant.getWhenToPlant());
				stmt.setString(7, plant.getGrowingFromSeed());
				stmt.setString(8, plant.getTransplanting());
				stmt.setString(9, plant.getSpacing());
				stmt.setString(10, plant.getWatering());
				stmt.setString(11, plant.getFeeding());
				stmt.setString(12, plant.getOtherCare());
				stmt.setString(13, plant.getDiseases());
				stmt.setString(14, plant.getPests());
				stmt.setString(15, plant.getHarvesting());
				stmt.setString(16, plant.getStorageUse());
				int updateCount = stmt.executeUpdate();
				if (updateCount == 1) {
					ResultSet keys = stmt.getGeneratedKeys();
					if (keys.next()) {
						int newPlantId = keys.getInt(1);
						plant.setId(newPlantId);
					}
				}
				conn.commit(); // COMMIT TRANSACTION
				return true;
			} catch (SQLException sqle) {
				return false;
			}
		}
	}

