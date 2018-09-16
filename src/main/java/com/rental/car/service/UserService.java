package com.rental.car.service;

import java.util.List;

import org.springframework.security.core.userdetails.UserDetails;

import com.rental.car.domain.User;

public interface UserService {

	public User save(User user);

	public User getUser(String id);

	public User deleteUserBy(String id);

	public User deleteUserBy(User user);

	public List<User> gelAllUser();

	public User getUserByUsername(String username);
}
