package com.rental.car.repository.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoOperations;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.rental.car.domain.Car;
import com.rental.car.domain.Reservation;
import com.rental.car.repository.ReservationRepository;
import com.rental.car.service.CarService;

@Repository
@Component
public class ReservatioRepositoryImpl implements ReservationRepository {

	private MongoOperations mongoOperations;

	private CarService carService;

	@Autowired
	public ReservatioRepositoryImpl(MongoOperations mongoOperations, CarService carService) {
		super();
		this.mongoOperations = mongoOperations;
		this.carService = carService;
	}

	@Override
	public Reservation save(Reservation reservation) {
		mongoOperations.save(reservation);
		return reservation;
	}

	@Override
	public Reservation getById(String id) {
		Query query = Query.query(Criteria.where("_id").is(id));
		Reservation reservation = mongoOperations.findOne(query, Reservation.class);
		return reservation;
	}

	@Override
	public Reservation deleteByReservation(Reservation reservation) {
		mongoOperations.remove(reservation);
		return reservation;
	}

	@Override
	public Reservation deleteById(String id) {
		Reservation reservation = getById(id);
		mongoOperations.remove(reservation);
		return reservation;
	}

	@Override
	public List<Reservation> getAllReservation() {
		List<Reservation> reservationList = mongoOperations.findAll(Reservation.class);
		return reservationList;
	}

	@Override
	public List<Car> getQueryReturnCar(Reservation reservation) {
		Query query = new Query();
		query.addCriteria(Criteria.where("enddate").lt(reservation.getStartdate()));
		List<Reservation> reservationList = mongoOperations.find(query, Reservation.class);
		List<Car> carList = mongoOperations.find(query, Car.class);
		for (Reservation r : reservationList) {
			carList.add(carService.findOne(r.getCarId())); //Reservation sorgusundan gelen deðerlere göre arabalar ekleniyor.
		}
		return carList;
	}

	public MongoOperations getMongoOperations() {
		return mongoOperations;
	}

	public void setMongoOperations(MongoOperations mongoOperations) {
		this.mongoOperations = mongoOperations;
	}

}
