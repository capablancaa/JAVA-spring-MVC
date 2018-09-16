package com.rental.car.repository;

import java.util.List;

import com.rental.car.domain.Brand;

public interface BrandRepository {

	public List<Brand> findAllBrand();

	public Brand save(Brand brand);

	public Brand getBrand(String id);

	public void delete(Brand brand);

	public void delete(String id);
}
