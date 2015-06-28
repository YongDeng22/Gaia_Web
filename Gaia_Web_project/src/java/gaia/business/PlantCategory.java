/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gaia.business;

import java.io.Serializable;
import java.util.Collection;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 *
 * @author yongdeng
 */
@Entity
@Table(name = "PlantCategory")
@NamedQueries({
    @NamedQuery(name = "PlantCategory.findAll", query = "SELECT p FROM PlantCategory p")})
public class PlantCategory implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "PlantCatID")
    private Integer plantCatID;
    @Column(name = "PlantCatName")
    private String plantCatName;
    @OneToMany(mappedBy = "plantCatID")
    private Collection<Plant> plantCollection;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "plantCategoryPlantCatID")
    private Collection<Plant> plantCollection1;

    public PlantCategory() {
    }

    public PlantCategory(Integer plantCatID) {
        this.plantCatID = plantCatID;
    }

    public Integer getPlantCatID() {
        return plantCatID;
    }

    public void setPlantCatID(Integer plantCatID) {
        this.plantCatID = plantCatID;
    }

    public String getPlantCatName() {
        return plantCatName;
    }

    public void setPlantCatName(String plantCatName) {
        this.plantCatName = plantCatName;
    }

    public Collection<Plant> getPlantCollection() {
        return plantCollection;
    }

    public void setPlantCollection(Collection<Plant> plantCollection) {
        this.plantCollection = plantCollection;
    }

    public Collection<Plant> getPlantCollection1() {
        return plantCollection1;
    }

    public void setPlantCollection1(Collection<Plant> plantCollection1) {
        this.plantCollection1 = plantCollection1;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (plantCatID != null ? plantCatID.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof PlantCategory)) {
            return false;
        }
        PlantCategory other = (PlantCategory) object;
        if ((this.plantCatID == null && other.plantCatID != null) || (this.plantCatID != null && !this.plantCatID.equals(other.plantCatID))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "gaia.business.PlantCategory[ plantCatID=" + plantCatID + " ]";
    }
    
}
