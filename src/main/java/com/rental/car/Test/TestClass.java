package com.rental.car.Test;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.rental.car.domain.Car;
import com.rental.car.domain.Location;
import com.rental.car.domain.Reservation;
import com.rental.car.domain.User;
import com.rental.car.service.AddressService;
import com.rental.car.service.CarService;
import com.rental.car.service.LocationService;
import com.rental.car.service.ReservationService;
import com.rental.car.service.UserService;

public class TestClass {
	public static void main(String[] args) throws ParseException {

		ApplicationContext applicationContext = new ClassPathXmlApplicationContext("/META-INF/servlet-context.xml");
		CarService carService = applicationContext.getBean(CarService.class);
		LocationService locationService = applicationContext.getBean(LocationService.class);
		AddressService addressService = applicationContext.getBean(AddressService.class);
		ReservationService reservationService = applicationContext.getBean(ReservationService.class);
		UserService userService = applicationContext.getBean(UserService.class);

		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG);

		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd hh:mm");

		String date1 = "2017-03-25 10:00";
		String date2 = "2017-03-16 12:00";

		Date alisdate = format.parse(date1);
		Date bitisdate = format.parse(date2);

		List<Location> locationList = locationService.getAll();

		Reservation reservation1 = new Reservation("58adb6b14c44313198d4ac34", locationList.get(2), locationList.get(0),
				alisdate, bitisdate);
		// Reservation reservation2 = new
		// Reservation("58adb6b14c44313198d4ac35", locationList.get(1),
		// locationList.get(4), alisdate, bitisdate);
		// Reservation reservation3 = new
		// Reservation("58adb6b14c44313198d4ac36", locationList.get(3),
		// locationList.get(2), alisdate, bitisdate);
		// Reservation reservation4 = new
		// Reservation("58adb6b14c44313198d4ac39", locationList.get(1),
		// locationList.get(1), alisdate, bitisdate);

		// reservationService.save(reservation4);
		// reservationService.save(reservation2);
		// reservationService.save(reservation3);
		// reservationService.save(reservation4);

		User user = new User();
		user.setUsername("yakup");
		user.setPassword("1234");
		user.setRole("ROLE_ADMIN");
		userService.save(user);

	}
}
