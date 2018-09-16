package com.rental.car.service;

import java.util.List;

import org.springframework.data.mongodb.core.aggregation.AggregationResults;

import com.rental.car.domain.Location;

public interface LocationService {

	public void save(Location location);

	public void delete(Location location);

	public void delete(String id);

	public List<Location> getAll();

	public Location getLocation(String id);

	public List<String> getAllCity();

	public List<String> getLocationByCity(String city);
}
