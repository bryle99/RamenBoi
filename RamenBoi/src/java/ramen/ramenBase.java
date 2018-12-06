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

enum Richness{ 
        Light, Medium, Rich, VeryRich; 
} 

enum Firmness{
        ExtraSoft, Soft, Medium, Firm, ExtraFirm;
}

abstract class ramenBase {
    
    
    
    float price;
    String description;
    int garlic;
    boolean scallions;
    Richness richness;
    Firmness firmness;

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

    public String getDesc() {
        return description; 
    }    
    
    public void setDescription(String description) {
        this.description = description;
    }
}
