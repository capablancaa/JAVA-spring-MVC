package com.rental.car.domain;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection = "extras", language = "turkish")
public class ExtraProducts {

	@Id
	private String id;
	private String productname;
	private int stockpieces;
	private long unitprice;
	private boolean stock;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getProductname() {
		return productname;
	}

	public void setProductname(String productname) {
		this.productname = productname;
	}

	public int getStockpieces() {
		return stockpieces;
	}

	public void setStockpieces(int stockpieces) {
		this.stockpieces = stockpieces;
	}

	public long getUnitprice() {
		return unitprice;
	}

	public void setUnitprice(long unitprice) {
		this.unitprice = unitprice;
	}

	public boolean isStock() {
		return stock;
	}

	public void setStock(boolean stock) {
		this.stock = stock;
	}

}
