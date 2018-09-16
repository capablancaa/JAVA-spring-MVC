package com.rental.car.controller;

import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.rental.car.domain.Reservation;
import com.rental.car.service.LocationService;

@Controller
@Component
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	private LocationService locationService;

	@Autowired
	public HomeController(LocationService locationService) {
		super();
		this.locationService = locationService;
	}

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		model.addAttribute("newReservation", new Reservation());
		model.addAttribute("cityList", locationService.getAllCity());
		return "home";
	}

	@RequestMapping(value = "/byCity")
	public @ResponseBody List<String> getLocationByCity(@RequestParam("city") String city, Model model) {
		List<String> locationList = locationService.getLocationByCity(city);
		return locationList;
	}

	public LocationService getLocationService() {
		return locationService;
	}

	public void setLocationService(LocationService locationService) {
		this.locationService = locationService;
	}

}
