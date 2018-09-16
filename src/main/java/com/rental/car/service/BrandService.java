package com.rental.car.service;

import java.util.List;

import com.rental.car.domain.Brand;

public interface BrandService {

	public List<Brand> findAllBrand();

	public Brand save(Brand brand);

	public Brand getBrand(String id);

	public void delete(Brand brand);

	public void delete(String id);

}
