package com.rental.car.domain;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection = "brand", language = "turkish")
public class Brand {

	@Id
	private String id;
	private String brandname;
	private String modelname;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getBrandname() {
		return brandname;
	}

	public void setBrandname(String brandname) {
		this.brandname = brandname;
	}

	public String getModelname() {
		return modelname;
	}

	public void setModelname(String modelname) {
		this.modelname = modelname;
	}

	public Brand(String brandname, String modelname) {
		super();
		this.brandname = brandname;
		this.modelname = modelname;
	}

	@Override
	public String toString() {
		return "Brand [id=" + id + ", brandname=" + brandname + ", modelname=" + modelname + "]";
	}

}
