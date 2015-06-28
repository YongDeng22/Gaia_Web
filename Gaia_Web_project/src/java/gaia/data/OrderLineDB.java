package gaia.data;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;

import gaia.business.*;

public class OrderLineDB {
    public static void insert(OrderLine orderLine) {
        EntityManager em = DButil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        trans.begin();
        try {
        em.persist(orderLine);
        em.flush();
        trans.commit();
        } catch (Exception e) {
            System.out.println(e);
            trans.rollback();
        } finally {
            em.close();
        }
    }
}