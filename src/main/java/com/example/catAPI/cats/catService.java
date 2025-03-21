package com.example.catAPI.cats;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/** 
 * catService.java
 * Centralizes data access to the cats database
 */ 
@Service
public class catService {

    @Autowired
    private catRepository catRepository;


    /**
     * Fetch all cats.
     *
     * @return the list of all cats.
     */
    public List<cat> getAllCats() {

        return catRepository.findAll();
    }

    /**
     * Fetch a unique cat.
     *
     * @param catID the unique cat id.
     * @return a unique cat object.
     */
    public cat getCatByID(int catID) {

        return catRepository.findById(catID).orElse(null);
    }

    /**
     * Fetch all cats whose name matches the search term.
     *
     * @param name the search key.
     * @return the list of matching cats.
     */
    public List<cat> getCatsByName(String name) {

        return catRepository.getCatsByName(name);
    }

    /**
     * Fetch all cats whose breed matches the search term.
     *
     * @param breed the search key.
     * @return the list of matching cats.
     */
    public List<cat> getCatsByBreed(String breed) {

        return catRepository.getCatsByBreed(breed);
    }

    /**
     * Fetch all cats with an age above a threshold.
     *
     * @param age the threshold
     * @return the list of matching cats
     */
    public List<cat> getOldCats(double age) {

        return catRepository.getOldCats(age);
    } 

    /**
     * Fetch all cats whose description matches the search term.
     *
     * @param descriptionn the search key.
     * @return the list of matching cats.
     */
    public List<cat> getCatsByDescription(String description) {

        return catRepository.getCatsByDescription(description);
    }

    
    /**
     * Add a new cat to the database.
     *
     * @param cat the new Student to add.
     */
    public void addNewCat(cat cat) {

        catRepository.save(cat);
    }

    /**
     * Update an existing cat.
     *
     * @param catID the unique cat Id.
     * @param cat   the new cat details.
     */
    public void updateCat(int catID, cat cat) {
        cat existing = getCatByID(catID);
        existing.setcatName(cat.getcatName());
        existing.setDesc(cat.getDesc());
        existing.setBreed(cat.getbreed());
        existing.setAge(cat.getAge());


        //Technically the 4 lines above are not necessary because the save method merges by default.
        catRepository.save(existing);
    }

    /**
     * Delete a unique cat.
     *
     * @param catID the unique cat Id.
     */
    public void deleteCatByID(int catID) {

        catRepository.deleteById(catID);
    }












}
