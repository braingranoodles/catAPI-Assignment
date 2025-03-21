package com.example.catAPI.cats;


import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

/** 
 * Provides database transactions
 */
@Repository

public interface catRepository extends JpaRepository<cat, Integer> {


    @Query(value = "select * from cats s where s.age >= ?1", nativeQuery = true)
    List<cat> getCatsByAge(double age);

    @Query(value = "select * from cats s where s.name >= ?1", nativeQuery = true)
    List<cat> getCatsByName(String name);

    @Query(value = "select * from cats s where s.breed >= ?1", nativeQuery = true)
    List<cat> getCatsByBreed(String breed);

    @Query(value = "select * from cats s where s.description >= ?1", nativeQuery = true)
    List<cat> getCatsByDescription(String description);

    @Query(value = "select * from cats s where s.age >= ?1", nativeQuery = true)
    List<cat> getOldCats(double age);


}
