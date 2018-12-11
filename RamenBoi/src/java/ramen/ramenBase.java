/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ramen;

import java.util.ArrayList;
import java.util.Arrays;

/**
 *
 * @author Rafael
 */

enum Richness{ 
        Light, Medium, Rich, VeryRich; 
} 

enum Firmness{
        ExtraSoft, Soft, Medium, Firm, ExtraFirm;
}

public class ramenBase {
    
    ArrayList<ingredientsDecorator> toppings;
    float price;
    String description;
    int garlic;
    boolean scallions;
    Richness richness;
    Firmness firmness;
    boolean isToppings;

    public void addToppings(ingredientsDecorator topping){           
        if(toppings == null){
            toppings = new ArrayList<ingredientsDecorator>(); 
        }
        toppings.add(topping);
        this.setPrice(toppings.get(toppings.size() - 1).getTotalCost());       
    }
    
    public String getToppings(){
        String ret = "";
        for(int i = 0; i < this.toppings.size(); i++){
            ret += this.toppings.get(i).getDescription() + " ";
        }
        return ret;
    }
    
    public void setToppings(boolean x) {
        this.isToppings = x;
    }

    public boolean isScallions() {
        return scallions;
    }

    public void setScallions(boolean scallions) {
        this.scallions = scallions;
    }

    public Richness getRichness() {
        return richness;    
    }

    public void setRichness(Richness richness) {
        this.richness = richness;
    }

    public Firmness getFirmness() {
        return firmness;
    }

    public void setFirmness(Firmness firmness) {
        this.firmness = firmness;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public String getDescription() {
        return description; 
    }    
    
    public void setDescription(String description) {
        this.description = description;
    }
}
