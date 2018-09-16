package com.rental.car.repository.impl;

import static org.springframework.data.mongodb.core.aggregation.Aggregation.*;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.mongodb.core.MongoOperations;
import org.springframework.data.mongodb.core.aggregation.Aggregation;
import org.springframework.data.mongodb.core.aggregation.AggregationResults;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Repository;

import com.rental.car.domain.Location;
import com.rental.car.repository.LocationRepository;

@Repository
public class LocationRepositoryImpl implements LocationRepository {

	@Autowired
	private MongoOperations mongoOperations;

	@Override
	public List<Location> findAll() {
		return mongoOperations.findAll(Location.class);
	}

	@Override
	public <S extends Location> List<S> findAll(Example<S> arg0, Sort arg1) {
		return null;
	}

	@Override
	public <S extends Location> List<S> findAll(Example<S> arg0) {
		return null;
	}

	@Override
	public List<Location> findAll(Sort arg0) {
		return null;
	}

	@Override
	public <S extends Location> List<S> insert(Iterable<S> arg0) {
		return null;
	}

	@Override
	public <S extends Location> S insert(S s) {
		mongoOperations.save(s);
		return s;
	}

	@Override
	public <S extends Location> List<S> save(Iterable<S> arg0) {
		return null;
	}

	@Override
	public <S extends Location> long count(Example<S> arg0) {
		return 0;
	}

	@Override
	public <S extends Location> boolean exists(Example<S> arg0) {
		return false;
	}

	@Override
	public <S extends Location> Page<S> findAll(Example<S> arg0, Pageable arg1) {
		return null;
	}

	@Override
	public <S extends Location> S findOne(Example<S> arg0) {
		return null;
	}

	@Override
	public Page<Location> findAll(Pageable arg0) {
		return null;
	}

	@Override
	public long count() {
		return 0;
	}

	@Override
	public void delete(Iterable<? extends Location> arg0) {

	}

	@Override
	public void delete(Location location) {
		mongoOperations.remove(location);
	}

	@Override
	public void delete(String arg0) {
		Query query = Query.query(Criteria.where("id").is(arg0));
		Location location = (Location) mongoOperations.find(query, Location.class);
		mongoOperations.remove(location);
	}

	@Override
	public void deleteAll() {

	}

	@Override
	public boolean exists(String arg0) {
		return false;
	}

	@Override
	public Iterable<Location> findAll(Iterable<String> arg0) {
		return null;
	}

	@Override
	public Location findOne(String arg0) {
		return mongoOperations.findById(arg0, Location.class);
	}

	@Override
	public <S extends Location> S save(S arg0) {
		mongoOperations.save(arg0);
		return arg0;
	}

	public MongoOperations getMongoOperations() {
		return mongoOperations;
	}

	public void setMongoOperations(MongoOperations mongoOperations) {
		this.mongoOperations = mongoOperations;
	}

	@Override
	public List<String> getAllCity() {
		Aggregation aggregation = Aggregation.newAggregation(group("id", "city"));
		AggregationResults<Location> results = mongoOperations.aggregate(aggregation, "locations", Location.class);
		List<String> cityList = new ArrayList<>();
		for (Location l : results) {
			cityList.add(l.getCity());
		}
		return cityList;
	}

	@Override
	public List<String> getLocationByCity(String city) {
		Query query = Query.query(Criteria.where("city").is(city));
		List<Location> locationList = mongoOperations.find(query, Location.class);
		List<String> stringLocation = new ArrayList<>();
		for (Location l : locationList) {
			stringLocation.add(l.getLocationname());
		}
		return stringLocation;
	}

}
