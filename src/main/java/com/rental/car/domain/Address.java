package com.rental.car.domain;

public class Address {

	private String city;
	private String district;
	private String wideAddress;

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getDistrict() {
		return district;
	}

	public void setDistrict(String district) {
		this.district = district;
	}

	public String getWideAddress() {
		return wideAddress;
	}

	public void setWideAddress(String wideAddress) {
		this.wideAddress = wideAddress;
	}

	public Address(String city, String district, String wideAddress) {
		super();
		this.city = city;
		this.district = district;
		this.wideAddress = wideAddress;
	}

	public Address() {

	}
}
