package com.rental.car.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.aggregation.AggregationResults;
import org.springframework.stereotype.Service;

import com.rental.car.domain.Location;
import com.rental.car.repository.LocationRepository;
import com.rental.car.repository.impl.LocationRepositoryImpl;
import com.rental.car.service.LocationService;

@Service
public class LocationServiceImpl implements LocationService {

	@Autowired
	private LocationRepositoryImpl locationRepository;

	@Override
	public void save(Location location) {
		locationRepository.save(location);
	}

	@Override
	public void delete(Location location) {
		locationRepository.delete(location);
	}

	@Override
	public void delete(String id) {
		locationRepository.delete(id);
	}

	@Override
	public List<Location> getAll() {
		return locationRepository.findAll();
	}

	@Override
	public Location getLocation(String id) {
		return locationRepository.findOne(id);
	}

	public LocationRepository getLocationRepository() {
		return locationRepository;
	}

	public void setLocationRepository(LocationRepositoryImpl locationRepository) {
		this.locationRepository = locationRepository;
	}

	@Override
	public List<String> getAllCity() {
		return locationRepository.getAllCity();
	}

	@Override
	public List<String> getLocationByCity(String city) {
		return locationRepository.getLocationByCity(city);
	}

}
