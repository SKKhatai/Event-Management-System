package com.example.demo.services;

import com.example.demo.entities.User;

public interface UserServices {

	public boolean registerUser(User user);
	
	User findByUsernameAndPassword(String username,String password);
}
