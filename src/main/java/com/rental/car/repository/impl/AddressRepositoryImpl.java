package com.rental.car.repository.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoOperations;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.rental.car.domain.Address;
import com.rental.car.repository.AddressRepository;

@Repository
@Component
public class AddressRepositoryImpl implements AddressRepository {

	private MongoOperations mongoOperations;

	@Autowired
	public AddressRepositoryImpl(MongoOperations mongoOperations) {
		super();
		this.mongoOperations = mongoOperations;
	}

	@Override
	public void save(Address address) {
		mongoOperations.save(address);
	}

	@Override
	public List<Address> findAll() {
		return mongoOperations.findAll(Address.class);
	}

}
