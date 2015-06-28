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
import javax.persistence.OneToOne;
import javax.persistence.Table;

/**
 *
 * @author yongdeng
 */
@Entity
@Table(name = "Product")
@NamedQueries({
    @NamedQuery(name = "Product.findAll", query = "SELECT p FROM Product p")})
public class Product implements Serializable {
    @Column(name = "ProductName")
    private String productName;
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "ProductID")
    private Integer productID;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "Price")
    private Float price;
    @Column(name = "Quantity")
    private Integer quantity;
    @OneToOne(cascade = CascadeType.ALL, mappedBy = "product")
    private Tools tools;
    @OneToOne(cascade = CascadeType.ALL, mappedBy = "product")
    private Plant plant;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "productProductID")
    private Collection<Plant> plantCollection;
    @OneToOne(cascade = CascadeType.ALL, mappedBy = "product")
    private Dvd dvd;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "productProductID")
    private Collection<Dvd> dvdCollection;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "product")
    private Collection<OrderLine> orderLineCollection;
    @OneToOne(cascade = CascadeType.ALL, mappedBy = "product")
    private Book book;
//    @OneToMany(mappedBy = "productID")
//    private Collection<CustomerReview> customerReviewCollection;

    public Product() {
    }

    public Product(Integer productID) {
        this.productID = productID;
    }

    public Integer getProductID() {
        return productID;
    }

    public void setProductID(Integer productID) {
        this.productID = productID;
    }

    public Float getPrice() {
        return price;
    }

    public void setPrice(Float price) {
        this.price = price;
    }

    public Integer getQuantity() {
        return quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }

    public Tools getTools() {
        return tools;
    }

    public void setTools(Tools tools) {
        this.tools = tools;
    }

    public Plant getPlant() {
        return plant;
    }

    public void setPlant(Plant plant) {
        this.plant = plant;
    }

    public Collection<Plant> getPlantCollection() {
        return plantCollection;
    }

    public void setPlantCollection(Collection<Plant> plantCollection) {
        this.plantCollection = plantCollection;
    }

    public Dvd getDvd() {
        return dvd;
    }

    public void setDvd(Dvd dvd) {
        this.dvd = dvd;
    }

    public Collection<Dvd> getDvdCollection() {
        return dvdCollection;
    }

    public void setDvdCollection(Collection<Dvd> dvdCollection) {
        this.dvdCollection = dvdCollection;
    }

    public Collection<OrderLine> getOrderLineCollection() {
        return orderLineCollection;
    }

    public void setOrderLineCollection(Collection<OrderLine> orderLineCollection) {
        this.orderLineCollection = orderLineCollection;
    }

    public Book getBook() {
        return book;
    }

    public void setBook(Book book) {
        this.book = book;
    }

//    public Collection<CustomerReview> getCustomerReviewCollection() {
//        return customerReviewCollection;
//    }
//
//    public void setCustomerReviewCollection(Collection<CustomerReview> customerReviewCollection) {
//        this.customerReviewCollection = customerReviewCollection;
//    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (productID != null ? productID.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Product)) {
            return false;
        }
        Product other = (Product) object;
        if ((this.productID == null && other.productID != null) || (this.productID != null && !this.productID.equals(other.productID))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "gaia.business.Product[ productID=" + productID + " ]";
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }
    
}
