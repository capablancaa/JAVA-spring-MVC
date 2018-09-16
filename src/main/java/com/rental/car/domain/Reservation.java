package com.rental.car.domain;

import java.util.Date;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection = "reservations", language = "turkish")
public class Reservation {

	@Id
	private String id;
	private String carId;
	private Location receptionLocation;
	private Location returnLocation;
	private Date startdate;
	private Date enddate;

	public Reservation() {
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getCarId() {
		return carId;
	}

	public void setCarId(String carId) {
		this.carId = carId;
	}

	public Location getReceptionLocation() {
		return receptionLocation;
	}

	public void setReceptionLocation(Location receptionLocation) {
		this.receptionLocation = receptionLocation;
	}

	public Location getReturnLocation() {
		return returnLocation;
	}

	public void setReturnLocation(Location returnLocation) {
		this.returnLocation = returnLocation;
	}

	public Date getStartdate() {
		return startdate;
	}

	public void setStartdate(Date startdate) {
		this.startdate = startdate;
	}

	public Date getEnddate() {
		return enddate;
	}

	public void setEnddate(Date enddate) {
		this.enddate = enddate;
	}

	public Reservation(String carId, Location receptionLocation, Location returnLocation, Date startdate,
			Date enddate) {
		super();
		this.carId = carId;
		this.receptionLocation = receptionLocation;
		this.returnLocation = returnLocation;
		this.startdate = startdate;
		this.enddate = enddate;
	}

	@Override
	public String toString() {
		return "Reservation: "+" receptionLocation: "+receptionLocation+". returnLocation: "+returnLocation+". startDate: "+startdate
				+". endDate: "+enddate+".";
	}

}
