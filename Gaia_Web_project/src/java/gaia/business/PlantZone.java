/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gaia.business;

import java.io.Serializable;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

/**
 *
 * @author yongdeng
 */
@Entity
@Table(name = "Plant_Zone")
@NamedQueries({
    @NamedQuery(name = "PlantZone.findAll", query = "SELECT p FROM PlantZone p")})
public class PlantZone implements Serializable {
    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected PlantZonePK plantZonePK;
    @JoinColumn(name = "ProductID", referencedColumnName = "ProductID", insertable = false, updatable = false)
    @ManyToOne(optional = false)
    private Plant plant;
    private Integer productID;
    private Integer zone;

    public PlantZone() {
    }

    public PlantZone(PlantZonePK plantZonePK) {
        this.plantZonePK = plantZonePK;
    }

    public PlantZone(int productID, int zone) {
        this.plantZonePK = new PlantZonePK(productID, zone);
    }

    public PlantZonePK getPlantZonePK() {
        return plantZonePK;
    }

    public void setPlantZonePK(PlantZonePK plantZonePK) {
        this.plantZonePK = plantZonePK;
    }

    public Plant getPlant() {
        return plant;
    }

    public void setPlant(Plant plant) {
        this.plant = plant;
    }
    
    public Integer getProductID() {
        return productID;
    }
    
    public Integer getZone() {
        return zone;
    }
    
    @Override
    public int hashCode() {
        int hash = 0;
        hash += (plantZonePK != null ? plantZonePK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof PlantZone)) {
            return false;
        }
        PlantZone other = (PlantZone) object;
        if ((this.plantZonePK == null && other.plantZonePK != null) || (this.plantZonePK != null && !this.plantZonePK.equals(other.plantZonePK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "gaia.business.PlantZone[ plantZonePK=" + plantZonePK + " ]";
    }
    
}
