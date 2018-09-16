package com.rental.car.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.rental.car.domain.Car;
import com.rental.car.domain.Reservation;
import com.rental.car.repository.CarRepository;
import com.rental.car.service.CarService;

@Service
@Component
public class CarServiceImpl implements CarService {

	@Autowired
	private CarRepository carRepository;

	public CarRepository getCarRepository() {
		return carRepository;
	}

	public void setCarRepository(CarRepository carRepository) {
		this.carRepository = carRepository;
	}

	@Override
	public void save(Car car) {
		carRepository.save(car);
	}

	@Override
	public void delete(Car car) {
		carRepository.delete(car);
	}

	@Override
	public void delete(String id) {
		carRepository.delete(id);
	}

	@Override
	public List<Car> findAll() {
		return carRepository.findAll();
	}

	@Override
	public Car findOne(String id) {
		return carRepository.findOne(id);
	}
}
