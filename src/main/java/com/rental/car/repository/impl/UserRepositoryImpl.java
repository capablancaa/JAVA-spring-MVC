package com.rental.car.repository.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoOperations;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.rental.car.domain.Role;
import com.rental.car.domain.User;
import com.rental.car.repository.UserRepository;

@Repository
@Component
public class UserRepositoryImpl implements UserRepository {

	private MongoOperations mongoOperations;

	@Autowired
	public UserRepositoryImpl(MongoOperations mongoOperations) {
		super();
		this.mongoOperations = mongoOperations;
	}

	@Override
	public User save(User user) {
		mongoOperations.insert(user);
		return user;
	}

	@Override
	public User getUser(String id) {
		Query query = Query.query(Criteria.where("_id").is(id));
		User user = mongoOperations.findOne(query, User.class);
		return user;
	}

	@Override
	public User deleteUserBy(String id) {
		User user = getUser(id);
		mongoOperations.remove(user);
		return user;
	}

	@Override
	public User deleteUserBy(User user) {
		mongoOperations.remove(user);
		return user;
	}

	@Override
	public List<User> gelAllUser() {
		List<User> userList = mongoOperations.findAll(User.class);
		return userList;
	}

	@Override
	public User getUserByUsername(String username) {
		Query query = Query.query(Criteria.where("username").is(username));
		User user = mongoOperations.findOne(query, User.class);
		return user;
	}

}
