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
public class noodles extends ingredientsDecorator{
    
    private ramenBase ramen;
    
    public noodles(ramenBase ramen){
        this.ramen = ramen;
    }
}
