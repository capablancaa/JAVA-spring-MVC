package com.rental.car.repository;

import java.util.List;

import com.rental.car.domain.Address;

public interface AddressRepository {

	public void save(Address address);

	public List<Address> findAll();
}
