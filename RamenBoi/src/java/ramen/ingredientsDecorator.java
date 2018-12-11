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
abstract class ingredientsDecorator extends ramenBase{
    
    int quantity = 1;
    ramenBase ramen;
    
    public float getTotalCost(){
        return ramen.getPrice() + (this.getPrice() * quantity);
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
      
}
