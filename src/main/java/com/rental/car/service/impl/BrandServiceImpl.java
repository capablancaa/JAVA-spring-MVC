package com.rental.car.service.impl;

import java.util.List;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.rental.car.domain.Brand;
import com.rental.car.service.BrandService;

@Service
@Component
public class BrandServiceImpl implements BrandService {

	@Override
	public List<Brand> findAllBrand() {
		return null;
	}

	@Override
	public Brand save(Brand brand) {
		return null;
	}

	@Override
	public Brand getBrand(String id) {
		return null;
	}

	@Override
	public void delete(Brand brand) {

	}

	@Override
	public void delete(String id) {

	}

}
