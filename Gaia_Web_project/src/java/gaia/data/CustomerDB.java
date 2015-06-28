/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Zhe Wu
 * @since 6-21-2015
 */

package gaia.data;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.NoResultException;
import javax.persistence.TypedQuery;

import gaia.business.Customer;



public class CustomerDB {

    public static void insert(Customer customer) {
        
        EntityManager em = DButil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        trans.begin();
        try {
            em.persist(customer);
            trans.commit();
        } catch (Exception e) {
            System.out.println(e);
            trans.rollback();
        } finally {
            em.close();
        }
    }

     public static void update(Customer customer) {
        EntityManager em = DButil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        trans.begin();       
        try {
            em.merge(customer);
            trans.commit();
        } catch (Exception e) {
            System.out.println(e);
            trans.rollback();
        } finally {
            em.close();
        }
    }

    public static void delete(Customer customer) {
        EntityManager em = DButil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        trans.begin();        
        try {
            em.remove(em.merge(customer));
            trans.commit();
        } catch (Exception e) {
            System.out.println(e);
            trans.rollback();
        } finally {
            em.close();
        }       
    }

    public static Customer selectCustomer(String email) {
        EntityManager em = DButil.getEmFactory().createEntityManager();
        String qString = "SELECT c FROM Customer c " +
                "WHERE c.email = :email";
        TypedQuery<Customer> q = em.createQuery(qString, Customer.class);
        q.setParameter("email", email);
        try {
            Customer customer = q.getSingleResult();
            return customer;
        } catch (NoResultException e) {
            return null;
        } finally {
            em.close();
        }
    }

    public static boolean emailExists(String email) {
        Customer c = selectCustomer(email);   
        return c != null;
    }
}
