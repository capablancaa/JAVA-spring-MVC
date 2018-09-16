package com.rental.car.service;

import java.util.List;

import com.rental.car.domain.Address;

public interface AddressService {

	public void save(Address address);

	public List<Address> findAll();
}
