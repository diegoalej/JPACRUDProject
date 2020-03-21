package com.skilldistillery.jpacrud.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Plant {
	// id,name,description,optimal_sun,optimal_soil,planting_considerations,when_to_plant,
	//	growing_from_seed,transplanting,spacing,watering,feeding,other_care,diseases,pests,harvesting,storage_use

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String name;
	private String description;
	@Column(name = "optimal_sun")
	private String optimalSun;
	@Column(name = "optimal_soil")
	private String optimalSoil;
	@Column(name = "planting_considerations")
	private String plantingConsiderations;
	@Column(name = "when_to_plant")
	private String whenToPlant;
	@Column(name = "growing_from_seed")
	private String growingFromSeed;
	private String transplanting;
	private String spacing;
	private String watering;
	private String feeding;
	@Column(name = "other_care")
	private String otherCare;
	private String diseases;
	private String pests;
	private String harvesting;
	@Column(name = "storage_use")
	private String storageUse;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getOptimalSun() {
		return optimalSun;
	}

	public void setOptimalSun(String optimalSun) {
		this.optimalSun = optimalSun;
	}

	public String getOptimalSoil() {
		return optimalSoil;
	}

	public void setOptimalSoil(String optimalSoil) {
		this.optimalSoil = optimalSoil;
	}

	public String getPlantingConsiderations() {
		return plantingConsiderations;
	}

	public void setPlantingConsiderations(String plantingConsiderations) {
		this.plantingConsiderations = plantingConsiderations;
	}

	public String getWhenToPlant() {
		return whenToPlant;
	}

	public void setWhenToPlant(String whenToPlant) {
		this.whenToPlant = whenToPlant;
	}

	public String getGrowingFromSeed() {
		return growingFromSeed;
	}

	public void setGrowingFromSeed(String growingFromSeed) {
		this.growingFromSeed = growingFromSeed;
	}

	public String getTransplanting() {
		return transplanting;
	}

	public void setTransplanting(String transplanting) {
		this.transplanting = transplanting;
	}

	public String getSpacing() {
		return spacing;
	}

	public void setSpacing(String spacing) {
		this.spacing = spacing;
	}

	public String getWatering() {
		return watering;
	}

	public void setWatering(String watering) {
		this.watering = watering;
	}

	public String getFeeding() {
		return feeding;
	}

	public void setFeeding(String feeding) {
		this.feeding = feeding;
	}

	public String getOtherCare() {
		return otherCare;
	}

	public void setOtherCare(String otherCare) {
		this.otherCare = otherCare;
	}

	public String getDiseases() {
		return diseases;
	}

	public void setDiseases(String diseases) {
		this.diseases = diseases;
	}

	public String getPests() {
		return pests;
	}

	public void setPests(String pests) {
		this.pests = pests;
	}

	public String getHarvesting() {
		return harvesting;
	}

	public void setHarvesting(String harvesting) {
		this.harvesting = harvesting;
	}

	public String getStorageUse() {
		return storageUse;
	}

	public void setStorageUse(String storageUse) {
		this.storageUse = storageUse;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Plant [id=").append(id).append(", name=").append(name).append(", description=")
				.append(description).append(", optimalSun=").append(optimalSun).append(", optimalSoil=")
				.append(optimalSoil).append(", plantingConsiderations=").append(plantingConsiderations)
				.append(", whenToPlant=").append(whenToPlant).append(", growingFromSeed=").append(growingFromSeed)
				.append(", transplanting=").append(transplanting).append(", spacing=").append(spacing)
				.append(", watering=").append(watering).append(", feeding=").append(feeding).append(", otherCare=")
				.append(otherCare).append(", diseases=").append(diseases).append(", pests=").append(pests)
				.append(", harvesting=").append(harvesting).append(", storageUse=").append(storageUse)
				.append(", getId()=").append(getId()).append(", getName()=").append(getName())
				.append(", getDescription()=").append(getDescription()).append(", getOptimalSun()=")
				.append(getOptimalSun()).append(", getOptimalSoil()=").append(getOptimalSoil())
				.append(", getPlantingConsiderations()=").append(getPlantingConsiderations())
				.append(", getWhenToPlant()=").append(getWhenToPlant()).append(", getGrowingFromSeed()=")
				.append(getGrowingFromSeed()).append(", getTransplanting()=").append(getTransplanting())
				.append(", getSpacing()=").append(getSpacing()).append(", getWatering()=").append(getWatering())
				.append(", getFeeding()=").append(getFeeding()).append(", getOtherCare()=").append(getOtherCare())
				.append(", getDiseases()=").append(getDiseases()).append(", getPests()=").append(getPests())
				.append(", getHarvesting()=").append(getHarvesting()).append(", getStorageUse()=")
				.append(getStorageUse()).append(", getClass()=").append(getClass()).append(", hashCode()=")
				.append(hashCode()).append(", toString()=").append(super.toString()).append("]");
		return builder.toString();
	}

	public Plant(int id, String name, String description) {
		super();
		this.id = id;
		this.name = name;
		this.description = description;
	}

	public Plant() {
		super();
	}

}
