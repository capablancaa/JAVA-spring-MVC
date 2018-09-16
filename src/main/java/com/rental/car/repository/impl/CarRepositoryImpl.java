package com.rental.car.repository.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoOperations;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.rental.car.domain.Car;
import com.rental.car.domain.Reservation;
import com.rental.car.repository.CarRepository;
import com.rental.car.service.CarService;

@Repository
@Component
public class CarRepositoryImpl implements CarRepository {

	@Autowired
	private MongoOperations mongoOperations;

	@Autowired
	private CarService carService;

	public CarService getCarService() {
		return carService;
	}

	public void setCarService(CarService carService) {
		this.carService = carService;
	}

	public MongoOperations getMongoOperations() {
		return mongoOperations;
	}

	public void setMongoOperations(MongoOperations mongoOperations) {
		this.mongoOperations = mongoOperations;
	}

	@Override
	public void save(Car car) {
		mongoOperations.insert(car);
	}

	@Override
	public void delete(Car car) {
		mongoOperations.remove(car);
	}

	@Override
	public void delete(String id) {
		Car car = findOne(id);
		mongoOperations.remove(car);
	}

	@Override
	public List<Car> findAll() {
		return mongoOperations.findAll(Car.class);
	}

	@Override
	public Car findOne(String id) {
		Query query = Query.query(Criteria.where("id").is(id));
		Car car = mongoOperations.findOne(query, Car.class);
		return car;
	}

	public CarRepositoryImpl() {

	}


}
