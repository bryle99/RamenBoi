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
public class egg extends ingredientsDecorator{

    public egg(ramenBase ramen){
        this.ramen = ramen;
        this.setPrice(30);
    }
}
