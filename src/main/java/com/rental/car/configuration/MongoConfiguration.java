package com.rental.car.configuration;

import org.springframework.context.annotation.Configuration;
import org.springframework.data.mongodb.config.AbstractMongoConfiguration;

import com.mongodb.Mongo;
import com.mongodb.MongoClient;

@Configuration
public class MongoConfiguration extends AbstractMongoConfiguration {

	@Override
	protected String getDatabaseName() {

		return "rentacar";
	}

	@Override
	public Mongo mongo() throws Exception {

		MongoClient client = new MongoClient("localhost", 27017);
		return client;
	}

}
