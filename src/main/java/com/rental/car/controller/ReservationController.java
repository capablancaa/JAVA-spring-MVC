package com.rental.car.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.rental.car.domain.Car;
import com.rental.car.domain.Location;
import com.rental.car.domain.Reservation;
import com.rental.car.service.LocationService;
import com.rental.car.service.ReservationService;

@Controller
@Component
@RequestMapping(value = "/reservation")
public class ReservationController {

	private ReservationService reservationService;
	private LocationService locationService;

	@Autowired
	public ReservationController(LocationService locationService, ReservationService reservationService) {
		super();
		this.locationService = locationService;
		this.reservationService = reservationService;
	}

	@RequestMapping(value = "/reservationQuery", method = RequestMethod.GET)
	public String getQueryByReturnCar(@ModelAttribute("newReservation") Reservation reservation, Model model) {
		List<Car> carList = reservationService.getQueryReturnCar(reservation);
		List<String> cityList = locationService.getAllCity();
		model.addAttribute("cityList", cityList);
		model.addAttribute("newReservation", reservation);
		model.addAttribute("carList", carList);
		List<String> carType = new ArrayList<>();
		carType.add("Ekonomik");
		carType.add("Orta");
		carType.add("Standart");
		carType.add("Prestij");
		carType.add("Premium");
		carType.add("Büyük");
		carType.add("Tümü");
		List<String> gearType = new ArrayList<>();
		gearType.add("Otomatik");
		gearType.add("Manuel");
		List<String> fuelType = new ArrayList<>();
		fuelType.add("Benzinli");
		fuelType.add("Dizel");
		fuelType.add("LPG");
		model.addAttribute("carType", carType);
		model.addAttribute("fuelType", fuelType);
		model.addAttribute("gearType", gearType);
		return "user/querycarlist";
	}

	@RequestMapping(value = "/selectedcar", method = RequestMethod.GET)
	public String getSelectedCar(@ModelAttribute("newReservation") Reservation reservation) {
		return "user/secilenaraba";
	}

}
