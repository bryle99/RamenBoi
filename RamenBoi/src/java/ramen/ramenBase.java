/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ramen;

/**
 *
 * @author Rafael
 */
abstract class ramenBase {
    
    float price;
    String description;

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public String getDesc() {
        return description; 
    }    
    
    public void setDescription(String description) {
        this.description = description;
    }
}
