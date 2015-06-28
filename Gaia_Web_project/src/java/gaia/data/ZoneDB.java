/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gaia.data;

import static com.sun.activation.registries.LogSupport.log;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.TypedQuery;

import gaia.business.*;
import gaia.data.DButil;
/**
 *
 * @author zuo
 */
public class ZoneDB {

    public static HardinessZone selectZone(String code) {
        EntityManager em=null;
        try{ em = DButil.getEmFactory().createEntityManager();}
        catch(Throwable t) {log("ERROR",t);}
        String qString = "SELECT p FROM HardinessZone p WHERE p.zip = :code";
        TypedQuery<HardinessZone> q = em.createQuery(qString, HardinessZone.class);
        //TypedQuery<HardinessZone> q = em.createQuery("SELECT h FROM HardinessZone h WHERE h.zip = '01101'", HardinessZone.class);

        q.setParameter("code", code);
        HardinessZone result = null;
        try {
            result = q.getSingleResult();
        } catch (NoResultException ex) {
            return null;
        } finally {
            em.close();
        }

        return (HardinessZone) result;
    }

    public static String selectPlantZone(String productID) {
        EntityManager em = DButil.getEmFactory().createEntityManager();
        String qString = "SELECT p FROM PlantZone p WHERE p.productID = :productID";
        TypedQuery<PlantZone> q = em.createQuery(qString, PlantZone.class);

        q.setParameter("productID", Integer.parseInt(productID));
        String plantZone = "";
        List<PlantZone> result = null;
        try {
            result = q.getResultList();
        } catch (NoResultException ex) {
            return null;
        } finally {
            em.close();
        }
        for (PlantZone pz: result) {
            plantZone += pz.getZone()+ " " ;
        }

        return plantZone;
    }

}
