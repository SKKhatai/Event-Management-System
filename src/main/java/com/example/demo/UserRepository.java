package com.example.demo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.entities.User;

public interface UserRepository extends JpaRepository<User,Integer>{
	User findByUsernameAndPassword(String username,String password);
}
