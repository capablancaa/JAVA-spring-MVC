package com.rental.car.repository.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoOperations;
import org.springframework.stereotype.Repository;

import com.rental.car.domain.Brand;
import com.rental.car.repository.BrandRepository;

@Repository
public class BrandRepositoryImpl implements BrandRepository {

	private MongoOperations mongoOperations;

	@Autowired
	public MongoOperations getMongoOperations() {
		return mongoOperations;
	}

	public void setMongoOperations(MongoOperations mongoOperations) {
		this.mongoOperations = mongoOperations;
	}

	@Override
	public List<Brand> findAllBrand() {
		return null;
	}

	@Override
	public Brand save(Brand brand) {
		return null;
	}

	@Override
	public Brand getBrand(String id) {
		return null;
	}

	@Override
	public void delete(Brand brand) {

	}

	@Override
	public void delete(String id) {

	}

	public BrandRepositoryImpl() {
	}
}
