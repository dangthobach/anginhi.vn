/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import config.HibernateUtil;
import entities.Food;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;


/**
 *
 * @author Bach
 */
public class FoodModel {
private final SessionFactory sf = new HibernateUtil().getSessionFactory();
public static List<Food> foodList= new ArrayList<>();
    public List<Food> getAllFood() {
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        
        try {
            Transaction transaction = session.beginTransaction();
            try {
                Query query = session.createQuery("From Food");
               foodList = (List<Food>) query.list();               
               return foodList;
            } catch (Exception e) {
                transaction.rollback();
                throw e;
            }
        } catch (Exception e) {
            throw e;
        }
       finally {
       session.close();
        }
    }
   
    
    
    
    
    public List<Food> getAllFoodByCategory(int category){
       Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        List<Food> array= new ArrayList<>();
        try {
            Transaction transaction = session.beginTransaction();
            try {
                Query query = session.createQuery("From Food where foodCategoryId = :foodCategoryId");             
                query.setInteger("foodCategoryId", category);
                array = (List<Food>) query.list();
                return array;
            } catch (Exception e) {
                transaction.rollback();
                throw e;
            }
        } catch (Exception e) {
            throw e;
        }
      finally {
            session.close();
        }
    }
    public int getCategoryID(String nameCategory){
      Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        ArrayList<Food> array;
        try {
            Transaction transaction = session.beginTransaction();
            try {
                Query query = session.createQuery("select foodCategoryId from FoodCategory where foodCategoryName = '"+nameCategory+"'");
              //  query.setString("foodCategoryId", nameCategory);
                int categoryid= (int)query.uniqueResult();
                return categoryid;
            } catch (Exception e) {
                transaction.rollback();
                throw e;
            }
        } catch (Exception e) {
            throw e;
        }
      finally {
         session.close();
        }
    }
    

    public boolean delete(Food food) {
       
        try {
             Session session = sf.openSession();
            Transaction tf = session.beginTransaction();
            session.delete(food);
            tf.commit();
            return true;
        } catch (Exception e) {
            sf.getCurrentSession().getTransaction().rollback();
            return false;
        } finally {
            sf.getCurrentSession().close();
        }
    }
    
    public boolean add(Food food){
    try{
        sf.getCurrentSession().beginTransaction();
        sf.getCurrentSession().saveOrUpdate(food);
        sf.getCurrentSession().getTransaction().commit();
      return true;
    }
    catch (Exception e){
    sf.getCurrentSession().getTransaction().rollback();
    return false;
    }
   
    }
}
