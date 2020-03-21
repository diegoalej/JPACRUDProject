package com.skilldistillery.jpacrud.data;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
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

	// updates FILM with USER INPUT
	public boolean updatePlant(Plant plant) {
		String URL = "jdbc:mysql://localhost:3306/gardendb?useSSL=false";
		String user = "gardenuser";
		String pass = "gardenuser";
		Connection conn = null;
		try {
			conn = DriverManager.getConnection(URL, user, pass);
			conn.setAutoCommit(false); // START TRANSACTION
			System.out.println(plant);
			String sql = "Update plant set plant.id=?," // 1
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
			PreparedStatement stmt = conn.prepareStatement(sql);
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

}
