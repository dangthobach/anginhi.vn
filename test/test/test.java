/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package test;



import entities.Food;
import java.util.List;
import model.FoodModel;





/**
 *
 * @author Bach
 */
public class test {
    
    public static void main(String[] args) {
            FoodModel tk= new FoodModel();          
             
         
           int foodcategory_id= tk.getCategoryID("Ngũ cốc và sản phẩm chế biến");
          List<Food> arr= tk.getAllFoodByCategory(foodcategory_id);
          for (Food i: arr){
              System.out.println(i.toString());
          
          } 
     
    }
    }

