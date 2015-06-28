/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gaia.business;

import java.io.Serializable;
import java.util.Collection;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 *
 * @author yongdeng
 */
@Entity
@Table(name = "CustomerReview")
@NamedQueries({
    @NamedQuery(name = "CustomerReview.findAll", query = "SELECT c FROM CustomerReview c")})
public class CustomerReview implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "ReviewID")
    private Integer reviewID;
    @Column(name = "Rate")
    private Integer rate;
    @Lob
    @Column(name = "ReviewDetail")
    private String reviewDetail;
    @Column(name = "ReviewDate")
    @Temporal(TemporalType.TIMESTAMP)
    private Date reviewDate;
//    @OneToMany(mappedBy = "customerReviewReviewID")
//    private Collection<Customer> customerCollection;
//    @JoinColumn(name = "CustID", referencedColumnName = "CustID")
//    @ManyToOne
//    private Customer custID;
//    @JoinColumn(name = "OrderNumber", referencedColumnName = "OrderNumber")
//    @ManyToOne
//    private Orders orderNumber;
//    @JoinColumn(name = "ProductID", referencedColumnName = "ProductID")
//    @ManyToOne
//    private Product productID;

    public CustomerReview() {
    }

    public CustomerReview(Integer reviewID) {
        this.reviewID = reviewID;
    }

    public Integer getReviewID() {
        return reviewID;
    }

    public void setReviewID(Integer reviewID) {
        this.reviewID = reviewID;
    }

    public Integer getRate() {
        return rate;
    }

    public void setRate(Integer rate) {
        this.rate = rate;
    }

    public String getReviewDetail() {
        return reviewDetail;
    }

    public void setReviewDetail(String reviewDetail) {
        this.reviewDetail = reviewDetail;
    }

    public Date getReviewDate() {
        return reviewDate;
    }

    public void setReviewDate(Date reviewDate) {
        this.reviewDate = reviewDate;
    }

//    public Collection<Customer> getCustomerCollection() {
//        return customerCollection;
//    }
//
//    public void setCustomerCollection(Collection<Customer> customerCollection) {
//        this.customerCollection = customerCollection;
//    }
//
//    public Customer getCustID() {
//        return custID;
//    }
//
//    public void setCustID(Customer custID) {
//        this.custID = custID;
//    }
//
//    public Orders getOrderNumber() {
//        return orderNumber;
//    }
//
//    public void setOrderNumber(Orders orderNumber) {
//        this.orderNumber = orderNumber;
//    }
//
//    public Product getProductID() {
//        return productID;
//    }
//
//    public void setProductID(Product productID) {
//        this.productID = productID;
//    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (reviewID != null ? reviewID.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof CustomerReview)) {
            return false;
        }
        CustomerReview other = (CustomerReview) object;
        if ((this.reviewID == null && other.reviewID != null) || (this.reviewID != null && !this.reviewID.equals(other.reviewID))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "gaia.business.CustomerReview[ reviewID=" + reviewID + " ]";
    }
    
}
