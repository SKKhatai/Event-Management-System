package com.example.demo.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.UserRepository;
import com.example.demo.entities.User;

@Service
public class UserServiceImpl implements UserServices {
    @Autowired
    private UserRepository userRepository;

    @Override
    public boolean registerUser(User user) {
        try {
            userRepository.save(user);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
    
    public User findByUsernameAndPassword(String username,String password) {
    	return userRepository.findByUsernameAndPassword(username,password);
    }
}