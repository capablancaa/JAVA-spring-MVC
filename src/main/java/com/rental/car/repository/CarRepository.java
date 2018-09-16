package com.rental.car.repository;

import java.util.List;

import com.rental.car.domain.Car;
import com.rental.car.domain.Reservation;

public interface CarRepository {

	public void save(Car car);

	public void delete(Car car);

	public void delete(String id);

	public List<Car> findAll();

	public Car findOne(String id);
}
