package com.rental.car.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;
import com.rental.car.service.UserService;

@Component
public class UserDetailsServiceImpl implements UserDetailsService {

	private UserService userService;

	@Autowired
	public UserDetailsServiceImpl(UserService userService) {
		super();
		this.userService = userService;
	}

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		com.rental.car.domain.User user=userService.getUserByUsername(username);
		return new User(user.getUsername(), user.getPassword(), AuthorityUtils.createAuthorityList(user.getRole()));
	}

}
