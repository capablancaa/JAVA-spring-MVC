package com.rental.car.domain;

import java.util.Date;
import java.util.List;

import org.springframework.data.annotation.Id;
import org.springframework.data.annotation.Transient;
import org.springframework.data.mongodb.core.mapping.Document;
import org.springframework.web.multipart.MultipartFile;

@Document(collection = "cars", language = "turkish")
public class Car {

	@Id
	private String id;
	private String brand;
	private String model;
	private String vehicleclass;
	private int year;
	private boolean hire;
	private Date startingdate;
	private Date enddate;
	private String geartype;
	private String fueltype;
	private int capacity;
	private String imagepath;
	private int price;
	private List<String> reservationIdList;

	@Transient
	private MultipartFile carimage;

	public Car() {
		super();
	}

	public Car(String id) {
		super();
		this.id = id;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getBrand() {
		return brand;
	}

	public void setBrand(String brand) {
		this.brand = brand;
	}

	public String getVehicleclass() {
		return vehicleclass;
	}

	public void setVehicleclass(String vehicleclass) {
		this.vehicleclass = vehicleclass;
	}

	public int getYear() {
		return year;
	}

	public void setYear(int year) {
		this.year = year;
	}

	public boolean isHire() {
		return hire;
	}

	public void setHire(boolean hire) {
		this.hire = hire;
	}

	public Date getStartingdate() {
		return startingdate;
	}

	public void setStartingdate(Date startingdate) {
		this.startingdate = startingdate;
	}

	public Date getEnddate() {
		return enddate;
	}

	public void setEnddate(Date enddate) {
		this.enddate = enddate;
	}

	public String getGeartype() {
		return geartype;
	}

	public void setGeartype(String geartype) {
		this.geartype = geartype;
	}

	public String getFueltype() {
		return fueltype;
	}

	public void setFueltype(String fueltype) {
		this.fueltype = fueltype;
	}

	public int getCapacity() {
		return capacity;
	}

	public void setCapacity(int capacity) {
		this.capacity = capacity;
	}

	public String getImagepath() {
		return imagepath;
	}

	public void setImagepath(String imagepath) {
		this.imagepath = imagepath;
	}

	public String getModel() {
		return model;
	}

	public void setModel(String model) {
		this.model = model;
	}

	public MultipartFile getCarimage() {
		return carimage;
	}

	public void setCarimage(MultipartFile carimage) {
		this.carimage = carimage;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public List<String> getReservationIdList() {
		return reservationIdList;
	}

	public void setReservationIdList(List<String> reservationIdList) {
		this.reservationIdList = reservationIdList;
	}

	public Car(String brand, String model, String vehicleclass, int year, boolean hire, Date startingdate, Date enddate,
			String geartype, String fueltype, int capacity, String imagepath) {
		super();
		this.model = model;
		this.imagepath = imagepath;
		this.brand = brand;
		this.vehicleclass = vehicleclass;
		this.year = year;
		this.hire = hire;
		this.startingdate = startingdate;
		this.enddate = enddate;
		this.geartype = geartype;
		this.fueltype = fueltype;
		this.capacity = capacity;
	}

	public Car(String brand, String model, String vehicleclass, int year, String geartype, String fueltype,
			int capacity, String imagepath) {
		super();
		this.brand = brand;
		this.model = model;
		this.vehicleclass = vehicleclass;
		this.year = year;
		this.geartype = geartype;
		this.fueltype = fueltype;
		this.capacity = capacity;
		this.imagepath = imagepath;
	}

	public Car(String brand, String model, String vehicleclass, int year, String geartype, String fueltype,
			int capacity, String imagepath, int price) {
		super();
		this.brand = brand;
		this.model = model;
		this.vehicleclass = vehicleclass;
		this.year = year;
		this.geartype = geartype;
		this.fueltype = fueltype;
		this.capacity = capacity;
		this.imagepath = imagepath;
		this.price = price;
	}

	@Override
	public String toString() {
		return "Car [id=" + id + ", brand=" + brand + ", model=" + model + ", vehicleclass=" + vehicleclass + ", year="
				+ year + ", hire=" + hire + ", startingdate=" + startingdate + ", enddate=" + enddate + ", geartype="
				+ geartype + ", fueltype=" + fueltype + ", capacity=" + capacity + ", imagepath=" + imagepath
				+ ", price=" + price + ", carimage=" + carimage + "]";
	}

}
