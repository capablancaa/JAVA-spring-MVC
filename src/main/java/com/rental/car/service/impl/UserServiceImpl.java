package com.rental.car.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.rental.car.domain.User;
import com.rental.car.repository.UserRepository;
import com.rental.car.service.UserService;

@Service
@Component(value = "userServiceImpl")
public class UserServiceImpl implements UserService {

	private UserRepository userRepository;

	@Autowired
	public UserServiceImpl(UserRepository userRepository) {
		super();
		this.userRepository = userRepository;
	}

	@Override
	public User save(User user) {
		return userRepository.save(user);
	}

	@Override
	public User getUser(String id) {
		return userRepository.getUser(id);
	}

	@Override
	public User deleteUserBy(String id) {
		return userRepository.deleteUserBy(id);
	}

	@Override
	public User deleteUserBy(User user) {
		return userRepository.deleteUserBy(user);
	}

	@Override
	public List<User> gelAllUser() {
		return userRepository.gelAllUser();
	}

	@Override
	public User getUserByUsername(String username) throws UsernameNotFoundException {
		return userRepository.getUserByUsername(username);
	}

	
}
