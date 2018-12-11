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

enum Spiciness{
        None, Mild, Medium, Hot, VeryHot;
}

enum Richness{ 
        Light, Medium, Rich, VeryRich; 
} 

enum Noodle_firmness{
        ExtraSoft, Soft, Medium, Firm, ExtraFirm;
}

public class ramenBase {
    
    ArrayList<ingredientsDecorator> toppings;
    float price;
    String description;
    int garlic;
    boolean scallions;
    Spiciness spiciness;
    Richness richness;
    Noodle_firmness noodle_firmness;
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
            ret += this.toppings.get(i).getDescription() + " | ";
        }
        return ret;
    }
    
    public void setToppings(boolean x) {
        this.isToppings = x;
    }
    
    public void setPreference(int garlic, boolean scallions, String spiciness, String richness, String noodle_firmness){
        this.garlic = garlic;
        this.scallions = scallions;
        
        spiciness = spiciness.replaceAll("\\s+","");
        richness = richness.replaceAll("\\s+","");
        noodle_firmness = noodle_firmness.replaceAll("\\s+","");
        
        this.spiciness = Spiciness.valueOf(spiciness);
        this.richness = Richness.valueOf(richness);
        this.noodle_firmness = Noodle_firmness.valueOf(noodle_firmness);
                
        //this.spiciness = spiciness;
        //this.richness = richness;
        //this.noodle_firmness = noodle_firmness;
    }

    public String getPreference(){
        String ret = "";
        Integer i = new Integer(this.garlic);
        ret += "Garlic: " + i.toString() + " | ";
        ret += "Scallions: " + ((this.scallions)? "Yes" : "No") + " | ";
        ret += "Spiciness: " + this.spiciness.name() + " | ";
        ret += "Richness: " + this.richness.name() + " | ";
        ret += "Noodle Firmness: " + this.noodle_firmness.name() + " | ";
        
        return ret;
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
