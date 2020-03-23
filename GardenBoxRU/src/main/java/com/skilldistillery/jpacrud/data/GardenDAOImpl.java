package com.skilldistillery.jpacrud.data;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
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

	// returns plant by keyword,
	public List<Plant> findPlantByKeyword(String keyword) {
		String searchWord = "%" + keyword + "%";
		List<Plant> plants = new ArrayList<>();
		plants = null;
		try (Connection conn = DriverManager.getConnection(URL, user, pass)) {
			Query query = em.createQuery(
					"SELECT s FROM Plant s WHERE s.name like :searchword OR s.description like :searchword1");
			query.setParameter("searchword", searchWord);
			query.setParameter("searchword1", searchWord);

			plants = query.getResultList();

			if (plants.size() > 0) {
				return plants;
			}
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
			return plants;
		}
		return plants;
	}

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
			String jpql = "UPDATE Plant s SET s.id=:pid," // 1
					+ " s.name=:pname," // 2
					+ " s.description=:descr," // 3
					+ " s.optimalSun=:optsun," // 4
					+ " s.optimalSoil=:optsoil," // 5
					+ " s.plantingConsiderations=:planting," // 6
					+ " s.whenToPlant=:whento," // 7
					+ " s.growingFromSeed=:growing," // 8
					+ " s.transplanting=:trans," // 9
					+ " s.spacing=:spacing," // 10
					+ " s.watering=:water," // 11
					+ " s.feeding=:feed," // 12
					+ " s.otherCare=:other," // 13
					+ " s.diseases=:disease," // 14
					+ " s.pests=:pest," // 15
					+ " s.harvesting=:harvest," // 16
					+ " s.storageUse=:storage" // 17
					+ " WHERE s.id=:cond"; // 18
			Query query = em.createQuery(jpql);
			query.setParameter("pid", plant.getId());
			query.setParameter("pname", plant.getName());
			query.setParameter("descr", plant.getDescription());
			query.setParameter("optsun", plant.getOptimalSun());
			query.setParameter("optsoil", plant.getOptimalSoil());
			query.setParameter("planting", plant.getPlantingConsiderations());
			query.setParameter("whento", plant.getWhenToPlant());
			query.setParameter("growing", plant.getGrowingFromSeed());
			query.setParameter("trans", plant.getTransplanting());
			query.setParameter("spacing", plant.getSpacing());
			query.setParameter("water", plant.getWatering());
			query.setParameter("feed", plant.getFeeding());
			query.setParameter("other", plant.getOtherCare());
			query.setParameter("disease", plant.getDiseases());
			query.setParameter("pest", plant.getPests());
			query.setParameter("harvest", plant.getHarvesting());
			query.setParameter("storage", plant.getStorageUse());
			query.setParameter("cond", plant.getId());
			int rowCount = query.executeUpdate();

			if (rowCount == 1) {
				// COMMIT TRANSACTION
				conn.commit();
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
//			int updateCount = 
			stmt.executeUpdate();
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
