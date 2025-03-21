package com.example.catAPI.cats;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="cats")
public class cat {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int catID;

    @Column(nullable = false)
    private String catName;

    private String description;

    private String breed;

    @Column(nullable = false)
    private double age;

    public cat(int catID, String catName, String description, String breed, double age) {
        this.catID = catID;
        this.catName = catName;
        this.description = description;
        this.breed = breed;
        this.age = age;
    }

    public cat(String catName, String description, String breed, double age) {
        this.catName = catName;
        this.description = description;
        this.breed = breed;
        this.age = age;
    }

    public cat() { 
    }

    public int getcatID() {
        return catID;
    }

    public void setcatID(int catID) {
        this.catID = catID;   
    }

    public String getcatName() {
        return catName;
    }

    public void setcatName(String catName) {
        this.catName = catName;
    }

    public String getDesc() {
        return description;
    }

    public void setDesc(String description) {
        this.description = description;   
    }

    public String getbreed() {
        return breed;
    }

    public void setBreed(String breed) {
        this.breed = breed;   
    }

    public double getAge() {
        return age;
    }

    public void setAge(double age) {
        this.age = age;   
    }
}
