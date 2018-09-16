package com.rental.car.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.rental.car.domain.Address;
import com.rental.car.domain.Location;
import com.rental.car.service.AddressService;
import com.rental.car.service.LocationService;

@Controller
@RequestMapping(value = "admin")
public class LocationController {

	private LocationService locationService;

	private AddressService addressService;

	@Autowired
	public LocationController(LocationService locationService, AddressService addressService) {
		super();
		this.locationService = locationService;
		this.addressService = addressService;
	}

	@RequestMapping(value = "addlocation", method = RequestMethod.GET)
	public String addLocationPage(Model model) {
		model.addAttribute("newLocation", new Location());
		model.addAttribute(new Address());
		return "/admin/addlocation";
	}

	@RequestMapping(value = "addlocation", method = RequestMethod.POST)
	public String addLocationPage(@ModelAttribute("newLocation") Location location, Model model) {
		model.addAttribute("addressList", addressService.findAll());
		locationService.save(location);
		return "redirect:/admin/addlocation";
	}

	public LocationService getLocationService() {
		return locationService;
	}

	public void setLocationService(LocationService locationService) {
		this.locationService = locationService;
	}

}
