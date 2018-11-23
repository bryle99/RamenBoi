/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ramen;

/**
 *
 * @author bryle
 */
public class ramenBase {

    public float price;
    public String desc;
    
    public float getPrice(){
        return this.price;
    }
    public String getDescription(){
        return this.desc;
    }
    
    public void setDescription(String desc){
        this.desc = desc;
    }
    
    public void addAddOns(){
    }
}
