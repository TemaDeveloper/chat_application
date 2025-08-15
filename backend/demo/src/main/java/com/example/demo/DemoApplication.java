package com.example.demo;

import org.springframework.boot.ApplicationRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

import com.example.demo.entity.User;
import com.example.demo.repository.UserRepository;

@SpringBootApplication
public class DemoApplication {

	public static void main(String[] args) {
		SpringApplication.run(DemoApplication.class, args);
	}

	
	


	// @Bean
	// ApplicationRunner applicationRunner(UserRepository userRepository){
	// 	return args -> {
	// 		// User user = userRepository.save(new User(
	// 		// 	null, "John", "1990-05-04", null,  "+1 437 545 2728", "aret@gmail.com"
	// 		// ));
	// 	};
	// }

}
