package com.rental.car.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.rental.car.service.CarService;
import com.rental.car.service.LocationService;

@RequestMapping(value = "admin")
@Controller
public class AdminController {

	private CarService carService;
	private LocationService locationService;

	@Autowired
	public AdminController(CarService carService, LocationService locationService) {
		super();
		this.carService = carService;
		this.locationService = locationService;
	}

	@RequestMapping(value = "")
	public String getHomePageView(Model model) {

		return "admin/home";
	}

	@RequestMapping(value = "carlist")
	public String carListPage(Model model) {
		model.addAttribute("carList", carService.findAll());
		return "admin/carlist";

	}

	public CarService getCarService() {
		return carService;
	}

	public void setCarService(CarService carService) {
		this.carService = carService;
	}

}
