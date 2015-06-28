package gaia.data;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.NoResultException;
import javax.persistence.TypedQuery;

import gaia.business.*;

public class OrderDB {

    public static void insert(Orders order) {
        EntityManager em = DButil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        trans.begin();
        try {
            em.persist(order);
            em.flush();
            System.out.println(order.toString());
            CustomerDB.update(order.getCustomer());
            for (OrderLine ol : order.getOrderLineCollection()) {
                OrderLineDB.insert(ol);
            }
            trans.commit();
        } catch (Exception e) {
            System.out.println(e);
            trans.rollback();
        } finally {
            em.close();
        }
    }

    public static void update(Orders order) {
        order.setIsProcessed(true);
        EntityManager em = DButil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        trans.begin();
        try {
            em.merge(order);
            for (OrderLine ol : order.getOrderLineCollection()) {
                em.merge(ol);
            }
            trans.commit();
        } catch (Exception e) {
            System.out.println(e);
            trans.rollback();
        } finally {
            em.close();
        }
    }

    public static List<Orders> selectUnprocessedInvoices() {
        EntityManager em = DButil.getEmFactory().createEntityManager();
        String qString = "SELECT i from Orders i "
                + "WHERE i.isProcessed = false";
        TypedQuery<Orders> q = em.createQuery(qString, Orders.class);
        List<Orders> results = null;
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
