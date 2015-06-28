/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gaia.business;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 *
 * @author yongdeng
 */
@Entity
@Table(name = "DVD")
@NamedQueries({
    @NamedQuery(name = "Dvd.findAll", query = "SELECT d FROM Dvd d")})
public class Dvd implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "ProductID")
    private Integer productID;
    @Column(name = "DVDName")
    private String dVDName;
    @Column(name = "PulisherTime")
    @Temporal(TemporalType.DATE)
    private Date pulisherTime;
    @Lob
    @Column(name = "Description")
    private String description;
    @JoinColumn(name = "ProductID", referencedColumnName = "ProductID", insertable = false, updatable = false)
    @OneToOne(optional = false)
    private Product product;
    @JoinColumn(name = "Product_ProductID", referencedColumnName = "ProductID")
    @ManyToOne(optional = false)
    private Product productProductID;

    public Dvd() {
    }

    public Dvd(Integer productID) {
        this.productID = productID;
    }

    public Integer getProductID() {
        return productID;
    }

    public void setProductID(Integer productID) {
        this.productID = productID;
    }

    public String getDVDName() {
        return dVDName;
    }

    public void setDVDName(String dVDName) {
        this.dVDName = dVDName;
    }

    public Date getPulisherTime() {
        return pulisherTime;
    }

    public void setPulisherTime(Date pulisherTime) {
        this.pulisherTime = pulisherTime;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
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
        if (!(object instanceof Dvd)) {
            return false;
        }
        Dvd other = (Dvd) object;
        if ((this.productID == null && other.productID != null) || (this.productID != null && !this.productID.equals(other.productID))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "gaia.business.Dvd[ productID=" + productID + " ]";
    }
    
}
