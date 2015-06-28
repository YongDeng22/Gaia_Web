/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gaia.business;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Embeddable;

/**
 *
 * @author yongdeng
 */
@Embeddable
public class PlantZonePK implements Serializable {
    @Basic(optional = false)
    @Column(name = "ProductID")
    private int productID;
    @Basic(optional = false)
    @Column(name = "Zone")
    private int zone;

    public PlantZonePK() {
    }

    public PlantZonePK(int productID, int zone) {
        this.productID = productID;
        this.zone = zone;
    }

    public int getProductID() {
        return productID;
    }

    public void setProductID(int productID) {
        this.productID = productID;
    }

    public int getZone() {
        return zone;
    }

    public void setZone(int zone) {
        this.zone = zone;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (int) productID;
        hash += (int) zone;
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof PlantZonePK)) {
            return false;
        }
        PlantZonePK other = (PlantZonePK) object;
        if (this.productID != other.productID) {
            return false;
        }
        if (this.zone != other.zone) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "gaia.business.PlantZonePK[ productID=" + productID + ", zone=" + zone + " ]";
    }
    
}
