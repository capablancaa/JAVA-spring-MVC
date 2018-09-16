package com.rental.car.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.rental.car.domain.Address;
import com.rental.car.repository.AddressRepository;
import com.rental.car.service.AddressService;

@Service
@Component
public class AddressServiceImpl implements AddressService {

	private AddressRepository addressRepository;

	@Autowired
	public AddressServiceImpl(AddressRepository addressRepository) {
		super();
		this.addressRepository = addressRepository;
	}

	@Override
	public void save(Address address) {
		addressRepository.save(address);
	}

	@Override
	public List<Address> findAll() {
		return addressRepository.findAll();
	}

	public AddressRepository getAddressRepository() {
		return addressRepository;
	}

	public void setAddressRepository(AddressRepository addressRepository) {
		this.addressRepository = addressRepository;
	}

}
