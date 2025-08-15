package com.example.demo;

import org.springframework.graphql.data.method.annotation.Argument;
import org.springframework.graphql.data.method.annotation.MutationMapping;
import org.springframework.graphql.data.method.annotation.QueryMapping;
import org.springframework.stereotype.Controller;

import com.example.demo.entity.User;
import com.example.demo.repository.UserRepository;

@Controller
public class UserController{
    
    private final UserRepository userRepository;

    public UserController(UserRepository userRepository){
        this.userRepository = userRepository;
    }

    @QueryMapping
    Iterable<User> getAllUsers(){
        return userRepository.findAll();
    }
    
    @MutationMapping
    User createUserAccount(@Argument UserInput userInput){
        User u = new User(userInput.name(), userInput.email(), userInput.phoneNo(), userInput.dob(), userInput.avatarUrl());
        System.out.println("New User was created successfully " + u);
        return userRepository.save(u);
    }

    record UserInput(String name, String email, String phoneNo, String dob, String avatarUrl) {}
}