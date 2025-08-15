package com.example.demo.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "app_user")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.UUID)
    private String id;

    private String name;

    private String dob;

    private String avatarUrl;

    private String phoneNo;

    private String email;


    public User(){} 

    public User(String name, String email, String phoneNo, String dob, String avatarUrl){
        this.avatarUrl = avatarUrl;
        this.name = name;
        this.dob = dob;
        this.phoneNo = phoneNo;
        this.email = email;
    }

    public String getAvatarUrl() {
        return avatarUrl;
    }

    public String getDob() {
        return dob;
    }

    public String getEmail() {
        return email;
    }

    public String getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getPhoneNo() {
        return phoneNo;
    }
    
   

}
