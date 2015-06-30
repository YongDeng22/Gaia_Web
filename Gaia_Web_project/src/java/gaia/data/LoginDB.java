/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gaia.data;

/**
 *
 * @author yongdeng
 * @since 6-25-2015
 */

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.NoResultException;
import javax.persistence.TypedQuery;

import gaia.business.*;

public class LoginDB {

    public static void insert(Login login) {
        
        EntityManager em = DButil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        trans.begin();
        try {
            em.persist(login);
            trans.commit();
        } catch (Exception e) {
            System.out.println(e);
            trans.rollback();
        } finally {
            em.close();
        }
    }

     public static void update(Login login) {
        EntityManager em = DButil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        trans.begin();       
        try {
            em.merge(login);
            trans.commit();
        } catch (Exception e) {
            System.out.println(e);
            trans.rollback();
        } finally {
            em.close();
        }
    }

    public static void delete(Login login) {
        EntityManager em = DButil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        trans.begin();        
        try {
            em.remove(em.merge(login));
            trans.commit();
        } catch (Exception e) {
            System.out.println(e);
            trans.rollback();
        } finally {
            em.close();
        }       
    }

    public static Login selectLogin(String userName, String password) {
        EntityManager em = DButil.getEmFactory().createEntityManager();
        String qString = "SELECT l FROM Login l " +
                "WHERE l.userName = :userName and l.password = :password";
        TypedQuery<Login> q = em.createQuery(qString, Login.class);
        q.setParameter("userName", userName);
        q.setParameter("password", password);
        try {
            Login login = q.getSingleResult();
            return login;
        } catch (NoResultException e) {
            return null;
        } finally {
            em.close();
        }
    }
    
    public static Login selectUserName(String userName) {
        EntityManager em = DButil.getEmFactory().createEntityManager();
        String qString = "SELECT c FROM Login c " +
                "WHERE c.userName = :userName";
        TypedQuery<Login> q = em.createQuery(qString, Login.class);
        q.setParameter("userName", userName);
        try {
            Login login = q.getSingleResult();
            return login;
        } catch (NoResultException e) {
            return null;
        } finally {
            em.close();
        }
    }
    
        public static String selectUserRole(String userName) {
        EntityManager em = DButil.getEmFactory().createEntityManager();
        String qString = "SELECT c FROM Login c " +
                "WHERE c.userRole = :userRole";
        TypedQuery<Login> q = em.createQuery(qString, Login.class);
        q.setParameter("userName", userName);
        try {
            Login login = q.getSingleResult();
            return login.getUserRole();
        } catch (NoResultException e) {
            return null;
        } finally {
            em.close();
        }
    }
    
    public static boolean userExists(String username, String password) {
        Login l = selectLogin(username, password);   
        return l != null;
    }
    public static boolean userNameExists(String userName) {
        Login c = selectUserName(userName);   
        return c != null;
    }
}
