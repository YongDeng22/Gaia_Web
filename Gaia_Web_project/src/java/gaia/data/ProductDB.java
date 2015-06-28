/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.

* Modified by Yong Deng
* 6-24-2015

 */
package gaia.data;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.TypedQuery;

import gaia.business.*;

/**
 *
 * @author zuo
 */
public class ProductDB {

    public static Product selectProduct(Integer code) {
        EntityManager em = DButil.getEmFactory().createEntityManager();
        String qString = "SELECT p FROM Product p WHERE p.productID = :code";
        TypedQuery<Product> q = em.createQuery(qString, Product.class);
        q.setParameter("code", code);
        Product result = null;
        try {
            result = q.getSingleResult();
        } catch (NoResultException ex) {
            return null;
        } finally {
            em.close();
        }

        return (Product) result;
    }

    public static Plant selectPlant(Integer code) {
        EntityManager em = DButil.getEmFactory().createEntityManager();
        String qString = "SELECT p FROM Plant p WHERE p.productID = :code";
        TypedQuery<Plant> q = em.createQuery(qString, Plant.class);
        q.setParameter("code", code);
        Plant plant = null;
        try {
            plant = q.getSingleResult();
        } catch (NoResultException ex) {
            return null;
        } finally {
            em.close();
        }

        return (Plant) plant;
    }

    public static Book selectBook(Integer code) {
        EntityManager em = DButil.getEmFactory().createEntityManager();
        String qString = "SELECT p FROM Book p WHERE p.productID = :code";
        TypedQuery<Book> q = em.createQuery(qString, Book.class);
        q.setParameter("code", code);
        Book book = null;
        try {
            book = q.getSingleResult();
        } catch (NoResultException ex) {
            return null;
        } finally {
            em.close();
        }

        return (Book)book;
    }

    public static Tools selectTool(Integer code) {
        EntityManager em = DButil.getEmFactory().createEntityManager();
        String qString = "SELECT p FROM Tools p WHERE p.productID = :code";
        TypedQuery<Tools> q = em.createQuery(qString, Tools.class);
        q.setParameter("code", code);
        Tools tool = null;
        try {
            tool = q.getSingleResult();
        } catch (NoResultException ex) {
            return null;
        } finally {
            em.close();
        }

        return (Tools)tool;
    }

//    public static Product selectProduct(Integer productId) {
//        EntityManager em = DButil.getEmFactory().createEntityManager();
//        
//        return em.find(Product.class, productId);
//    }
    public static List<Product> selectProducts() {
        EntityManager em = DButil.getEmFactory().createEntityManager();
        String qString = "SELECT p from Product p";
        TypedQuery<Product> q = em.createQuery(qString, Product.class);
        List<Product> results = null;
        try {
            results = q.getResultList();
        } catch (NoResultException ex) {
            return null;
        } finally {
            em.close();
        }

        return results;
    }
    
        public static List<Product> selectProducts(String keyword) {
        EntityManager em = DButil.getEmFactory().createEntityManager();
        String qString = "SELECT p from Product p WHERE UPPER(p.productName) LIKE :keyword";
        
        TypedQuery<Product> q = em.createQuery(qString, Product.class);
        q.setParameter("keyword", "%"+keyword+"%");
        List<Product> results = null;
        try {
            results = q.getResultList();
        } catch (NoResultException ex) {
            return null;
        } finally {
            em.close();
        }
        return results;
    }
}
