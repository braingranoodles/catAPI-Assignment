package com.example.catAPI.cats;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

/** 
 * catController.java
 * Includes APIS for the cat object
 */
@RestController
@RequestMapping("/cats")
public class catController {

    @Autowired
    private catService service;

    /**
     * Get a list of all cats in the database.
     * http://localhost:8080/cats/all
     *
     * @return a list of cats objects.
     */

     @GetMapping("/all")
    public Object getAllCats() {
        return new ResponseEntity<>(service.getAllCats(), HttpStatus.OK);

    }
    
    /**
     * Get a specific cat by Id.
     * http://localhost:8080/cats/2
     *
     * @param catID the unique Id for a cat.
     * @return One cat object.
     */
    @GetMapping("/{catID}")
    public Object getOneCat(@PathVariable int catID) {
        return new ResponseEntity<>(service.getCatByID(catID), HttpStatus.OK);

    }

    /**
     * Get a list of cats with a name that contains the given string.
     * http://localhost:8080/cats/name?search=alex
     *
     * @param search the search key
     * @return list of cats objects matching the search key.
     */
    @GetMapping("/name")
    public Object getCatsByName(@RequestParam(name = "search", defaultValue = "") String search) {
        return new ResponseEntity<>(service.getCatsByName(search), HttpStatus.OK);
    }

    /**
     * Get a list of cats with a name that contains the given breed.
     * http://localhost:8080/cats/breed?search=tabby
     *
     * @param search the search key
     * @return list of cats objects matching the search key.
     */
    @GetMapping("/breed")
    public Object getCatsByBreed(@RequestParam(name = "search", defaultValue = "") String search) {
        return new ResponseEntity<>(service.getCatsByBreed(search), HttpStatus.OK);
    }

    /**
     * Get a list of cats with an age above a threshold.
     * http://localhost:8080/cats/old?age=5.0
     *
     * @param age the minimum age
     * @return list of cat objects matching the search key.
     */
    @GetMapping("/old")
    public Object getOldCats(@RequestParam(name = "old", defaultValue = "5.0") double age) {
        return new ResponseEntity<>(service.getOldCats(age), HttpStatus.OK);

    }

    /**
     * Get a list of cats based on their description.
     * http://localhost:8080/cats/description?search=white
     * 
     *
     * @param description the search key.
     * @return A list of cat objects matching the search key.
     */
    @GetMapping("/description")
    public ResponseEntity<Object> getCatsByDescription(@RequestParam String search) {
        return new ResponseEntity<>(service.getCatsByDescription(search), HttpStatus.OK);
    }

    /**
     * Create a new cat entry.
     * http://localhost:8080/cats/new --data '{"catName": "sample new cat", "description": "Orange cat with fluffy fur", "breed": tabby, "age": 5.0}'
     *
     * @param cat the new cat object.
     * @return the updated list of cats.
     */
    @PostMapping("/new")
    public Object addNewCat(@RequestBody cat cat) {
        service.addNewCat(cat);
        return new ResponseEntity<>(service.getAllCats(), HttpStatus.CREATED);

    }

    /**
     * Update an existing cat object.
     * http://localhost:8080/cats/update/2 --data '{ "catID": 1, "name": "sampleUpdated", "description": "Orange cat with fluffy fur", "breed": "tabby", "age": 5}'
     *
     * @param catID the unique cat Id.
     * @param cat   the new update cat details.
     * @return the updated cat object.
     */
    @PutMapping("/update/{catID}")
    public Object updateCat(@PathVariable int catID, @RequestBody cat cat) {
        service.updateCat(catID, cat);
        return new ResponseEntity<>(service.getCatByID(catID), HttpStatus.CREATED);

        
    }

    /**
     * Delete a cat object.
     * http://localhost:8080/cats/delete/2
     *
     * @param catID the unique cat Id.
     * @return the updated list of cats.
     */
    @DeleteMapping("/delete/{catID}")
    public Object deleteCatByID(@PathVariable int catID) {
        service.deleteCatByID(catID);
        return new ResponseEntity<>(service.getAllCats(), HttpStatus.OK);
    }





}
