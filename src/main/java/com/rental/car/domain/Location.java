package com.rental.car.domain;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection = "locations", language = "turkish")
public class Location {

	@Id
	private String id;
	private String locationname;
	private String city;
	private String wideAddress;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getLocationname() {
		return locationname;
	}

	public void setLocationname(String locationname) {
		this.locationname = locationname;
	}

	public String getWideAddress() {
		return wideAddress;
	}

	public void setWideAddress(String wideAddress) {
		this.wideAddress = wideAddress;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public Location(String locationname, String city, String wideAddress) {
		super();
		this.locationname = locationname;
		this.city = city;
		this.wideAddress = wideAddress;
	}

	public Location() {
	}

	@Override
	public String toString() {
		return "Location [id=" + id + ", locationname=" + locationname + ", city=" + city + ", wideAddress="
				+ wideAddress + "]";
	}

}
