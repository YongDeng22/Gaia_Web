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
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;


/**
 *
 * @author yongdeng
 */
@Entity
@Table(name = "Plant")
@NamedQueries({
    @NamedQuery(name = "Plant.findAll", query = "SELECT p FROM Plant p")})
public class Plant implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "ProductID")
    private Integer productID;
    @Column(name = "PlantName")
    private String plantName;
    @Column(name = "SunTolerance")
    private String sunTolerance;
    @Column(name = "BlossomColor")
    private String blossomColor;
    @Column(name = "BotanicalName")
    private String botanicalName;
    @Column(name = "WaterRequirement")
    private String waterRequirement;
    @Column(name = "ContainerSize")
    private String containerSize;
    @Column(name = "MatureLength")
    private String matureLength;
    @Lob
    @Column(name = "AdditionalChar")
    private String additionalChar;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "plant")
    private Collection<PlantZone> plantZoneCollection;
    @JoinColumn(name = "PlantCatID", referencedColumnName = "PlantCatID")
    @ManyToOne
    private PlantCategory plantCatID;
    @JoinColumn(name = "ProductID", referencedColumnName = "ProductID", insertable = false, updatable = false)
    @OneToOne(optional = false)
    private Product product;
    @JoinColumn(name = "PlantCategory_PlantCatID", referencedColumnName = "PlantCatID")
    @ManyToOne(optional = false)
    private PlantCategory plantCategoryPlantCatID;
    @JoinColumn(name = "Product_ProductID", referencedColumnName = "ProductID")
    @ManyToOne(optional = false)
    private Product productProductID;
    
    public Plant() {
    }

    public Plant(Integer productID) {
        this.productID = productID;
    }

    public Integer getProductID() {
        return productID;
    }

    public void setProductID(Integer productID) {
        this.productID = productID;
    }

    public String getPlantName() {
        return plantName;
    }

    public void setPlantName(String plantName) {
        this.plantName = plantName;
    }

    public String getSunTolerance() {
        return sunTolerance;
    }

    public void setSunTolerance(String sunTolerance) {
        this.sunTolerance = sunTolerance;
    }

    public String getBlossomColor() {
        return blossomColor;
    }

    public void setBlossomColor(String blossomColor) {
        this.blossomColor = blossomColor;
    }

    public String getBotanicalName() {
        return botanicalName;
    }

    public void setBotanicalName(String botanicalName) {
        this.botanicalName = botanicalName;
    }

    public String getWaterRequirement() {
        return waterRequirement;
    }

    public void setWaterRequirement(String waterRequirement) {
        this.waterRequirement = waterRequirement;
    }

    public String getContainerSize() {
        return containerSize;
    }

    public void setContainerSize(String containerSize) {
        this.containerSize = containerSize;
    }

    public String getMatureLength() {
        return matureLength;
    }

    public void setMatureLength(String matureLength) {
        this.matureLength = matureLength;
    }

    public String getAdditionalChar() {
        return additionalChar;
    }

    public void setAdditionalChar(String additionalChar) {
        this.additionalChar = additionalChar;
    }

    public Collection<PlantZone> getPlantZoneCollection() {
        return plantZoneCollection;
    }

    public void setPlantZoneCollection(Collection<PlantZone> plantZoneCollection) {
        this.plantZoneCollection = plantZoneCollection;
    }

    public PlantCategory getPlantCatID() {
        return plantCatID;
    }

    public void setPlantCatID(PlantCategory plantCatID) {
        this.plantCatID = plantCatID;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public PlantCategory getPlantCategoryPlantCatID() {
        return plantCategoryPlantCatID;
    }

    public void setPlantCategoryPlantCatID(PlantCategory plantCategoryPlantCatID) {
        this.plantCategoryPlantCatID = plantCategoryPlantCatID;
    }

    public Product getProductProductID() {
        return productProductID;
    }

    public void setProductProductID(Product productProductID) {
        this.productProductID = productProductID;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (productID != null ? productID.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Plant)) {
            return false;
        }
        Plant other = (Plant) object;
        if ((this.productID == null && other.productID != null) || (this.productID != null && !this.productID.equals(other.productID))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "gaia.business.Plant[ productID=" + productID + " ]";
    }
    
}
