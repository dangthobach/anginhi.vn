/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import config.HibernateUtil;
import entities.MemberAccount;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
 *
 * @author Bach
 */
public class MemberAccountModel {

    private final SessionFactory sf = new HibernateUtil().getSessionFactory();

    public List<MemberAccount> danhsach() {

        try {
            sf.getCurrentSession().beginTransaction();
            List<MemberAccount> result = sf.getCurrentSession().createCriteria(MemberAccount.class).list();
            
            return result;
        } catch (Exception e) {
            return null;
        }
        finally {
        sf.getCurrentSession().close();
        }
    }

    public MemberAccount thongtin(Integer matk) {
        try {
            sf.getCurrentSession().beginTransaction();
            return (MemberAccount) sf.getCurrentSession().get(MemberAccount.class, matk);
        } catch (Exception e) {
            return null;
        } 
         finally {
        sf.getCurrentSession().close();
        }
    }

    public boolean xoa(MemberAccount tk) {
       
        try {
             Session session = sf.openSession();
            Transaction tf = session.beginTransaction();
            session.delete(tk);
            tf.commit();
            return true;
        } catch (Exception e) {
            sf.getCurrentSession().getTransaction().rollback();
            return false;
        } finally {
            sf.getCurrentSession().close();
        }
    }
}
