package com.rental.car.controller;

import java.io.File;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.rental.car.domain.Car;
import com.rental.car.domain.User;
import com.rental.car.service.AddressService;
import com.rental.car.service.CarService;
import com.rental.car.service.UserService;

@RequestMapping(value = "/user")
@Controller
public class UserController {

	private CarService carService;

	private UserService userService;

	private AddressService addressService;

	private Path path;

	@Autowired
	public UserController(CarService carService, UserService userService, AddressService addressService) {
		super();
		this.addressService = addressService;
		this.carService = carService;
		this.userService = userService;
	}

	@RequestMapping(value = "/carlist")
	public String carList(Model model) {
		model.addAttribute("carList", carService.findAll());
		return "user/carlist";
	}

	@RequestMapping(value = "registeruser")
	public String registerUser(Model model) {
		model.addAttribute("newUser", new User());
		return "user/kaydol";
	}

	@RequestMapping(value = "registeruser", method = RequestMethod.POST)
	public String registerUser(@ModelAttribute("newUser") User user, Model model) {
		user.setRole("ROLE_USER");
		userService.save(user);
		Authentication authentication = new UsernamePasswordAuthenticationToken(user, user.getPassword(), user.getRoleList());
		SecurityContextHolder.getContext().setAuthentication(authentication);
		model.addAttribute("user", user);
		return "redirect:/";
	}

	@RequestMapping(value = "/addcar")
	public String addCar(Model model) {
		model.addAttribute("newCar", new Car());
		List<String> carType = new ArrayList<>();
		carType.add("Ekonomik");
		carType.add("Orta");
		carType.add("Standart");
		carType.add("Prestij");
		carType.add("Premium");
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
		return "user/addcar";
	}

	@RequestMapping(value = "/addcar", method = RequestMethod.POST)
	public String addCar(@ModelAttribute("newCar") Car car, BindingResult result, HttpServletRequest request) {

		if (result.hasErrors()) {
			return "admin/addcar";
		}
		path = Paths.get("D:/NeonProjects/RentACar/src/main/webapp/resources/resim/car-image/" + car.getBrand() + "_"
				+ car.getModel() + ".png");
		car.setImagepath(car.getBrand() + "_" + car.getModel() + ".png");
		carService.save(car);
		MultipartFile multipartFile = car.getCarimage();

		if (multipartFile != null && !multipartFile.isEmpty()) {
			try {
				multipartFile.transferTo(new File(path.toString()));
			} catch (Exception e) {
				e.printStackTrace();
				throw new RuntimeException("Car image save failed");
			}
		}
		return "redirect:/";
	}

}
