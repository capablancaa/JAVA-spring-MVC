package com.rental.car.controller.admin;

import java.io.File;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.rental.car.domain.Car;
import com.rental.car.service.CarService;

@Controller
@Component
@RequestMapping(value = "/admin")
public class CarController {

	private Path path;

	private CarService carService;

	public CarService getCarService() {
		return carService;
	}

	@Autowired
	public CarController(CarService carService) {
		super();
		this.carService = carService;
	}

	public void setCarService(CarService carService) {
		this.carService = carService;
	}

	@RequestMapping(value = "/addcar", method = RequestMethod.GET)
	public String getAddCarView(Model model) {
		model.addAttribute("newCar", new Car());
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
		return "admin/addcar";
	}

	@RequestMapping(value = "/addcar", method = RequestMethod.POST)
	public String addCar(@ModelAttribute("newCar") Car car, BindingResult result, HttpServletRequest request) {

		System.out.println(car);

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

	@RequestMapping(value = "deletecar{carId}", method = RequestMethod.GET)
	public String deleteCar(@RequestParam("carId") String id) {
		carService.delete(id);
		return "redirect:/admin/carlist";
	}

}
