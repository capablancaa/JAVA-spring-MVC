package com.rental.car.repository;

import java.util.List;

import com.rental.car.domain.Car;
import com.rental.car.domain.Reservation;

public interface ReservationRepository {

	public Reservation save(Reservation reservation);

	public Reservation getById(String id);

	public Reservation deleteByReservation(Reservation reservation);

	public Reservation deleteById(String id);

	public List<Reservation> getAllReservation();

	public List<Car> getQueryReturnCar(Reservation reservation);

}
