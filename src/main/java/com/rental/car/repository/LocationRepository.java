package com.rental.car.repository;

import java.util.List;

import org.springframework.data.mongodb.repository.MongoRepository;

import com.rental.car.domain.Location;

public interface LocationRepository extends MongoRepository<Location, String> {

	public List<String> getAllCity();

	public List<String> getLocationByCity(String city);

}
