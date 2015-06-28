/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gaia.business;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToOne;
import javax.persistence.Table;

/**
 *
 * @author yongdeng
 */
@Entity
@Table(name = "Tools")
@NamedQueries({
    @NamedQuery(name = "Tools.findAll", query = "SELECT t FROM Tools t")})
public class Tools implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "ProductID")
    private Integer productID;
    @Column(name = "ToolName")
    private String toolName;
    @Lob
    @Column(name = "AdditionalChar")
    private String additionalChar;
    @Basic(optional = false)
    @Column(name = "Product_ProductID")
    private int productProductID;
    @JoinColumn(name = "ProductID", referencedColumnName = "ProductID", insertable = false, updatable = false)
    @OneToOne(optional = false)
    private Product product;

    public Tools() {
    }

    public Tools(Integer productID) {
        this.productID = productID;
    }

    public Tools(Integer productID, int productProductID) {
        this.productID = productID;
        this.productProductID = productProductID;
    }

    public Integer getProductID() {
        return productID;
    }

    public void setProductID(Integer productID) {
        this.productID = productID;
    }

    public String getToolName() {
        return toolName;
    }

    public void setToolName(String toolName) {
        this.toolName = toolName;
    }

    public String getAdditionalChar() {
        return additionalChar;
    }

    public void setAdditionalChar(String additionalChar) {
        this.additionalChar = additionalChar;
    }

    public int getProductProductID() {
        return productProductID;
    }

    public void setProductProductID(int productProductID) {
        this.productProductID = productProductID;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
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
        if (!(object instanceof Tools)) {
            return false;
        }
        Tools other = (Tools) object;
        if ((this.productID == null && other.productID != null) || (this.productID != null && !this.productID.equals(other.productID))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "gaia.business.Tools[ productID=" + productID + " ]";
    }
    
}
