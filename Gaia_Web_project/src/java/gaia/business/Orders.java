/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gaia.business;

import java.io.Serializable;
import java.text.DateFormat;
import java.text.NumberFormat;
import java.util.Collection;
import java.util.Date;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 *
 * @author yongdeng
 */
@Entity
@Table(name = "Orders")
@NamedQueries({
    @NamedQuery(name = "Orders.findAll", query = "SELECT o FROM Orders o")})
public class Orders implements Serializable {
    @Column(name = "isProcessed")
    private Boolean isProcessed;

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "OrderNumber")
    private Integer orderNumber;
    @Column(name = "PurchaseDate")
    @Temporal(TemporalType.TIMESTAMP)
    private Date purchaseDate;
    @JoinColumn(name = "CustID", referencedColumnName = "CustID")
    @ManyToOne
    private Customer custID;
    @JoinColumn(name = "Customer_CustID", referencedColumnName = "CustID")
    @ManyToOne(optional = false)
    private Customer customer;
    @OneToOne(cascade = CascadeType.ALL, mappedBy = "orders")
    private OrderLine orderLine;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "ordersOrderNumber")
    private Collection<OrderLine> orderLineCollection;
//    @OneToMany(mappedBy = "orderNumber")
//    private Collection<CustomerReview> customerReviewCollection;
//    @Column(name = "OrderTotal")
//    private String orderTotal;

    public Orders() {
    }

    public Orders(Integer orderNumber) {
        this.orderNumber = orderNumber;
    }

    public String getPurchaseDateDefaultFormat() {
        DateFormat dateFormat = DateFormat.getDateInstance();
        String purchaseDateFormatted = dateFormat.format(purchaseDate);
        return purchaseDateFormatted;
    }

    public boolean isIsProcessed() {
        return isProcessed;
    }

    public void setIsProcessed(boolean isProcessed) {
        this.isProcessed = isProcessed;
    }

//    public String getOrderTotal() {
//        return orderTotal;
////        double total = 0.0;
////        for (OrderLine item : orderLineCollection) {
////            total += Double.parseDouble(item.getSubTotal());
////        }
////        return String.format("%.2f", total);
//    }
//    
//    public void setOrderTotal (String orderTotal) {
//        this.orderTotal = orderTotal;
//    }
    
    public Integer getOrderNumber() {
        return orderNumber;
    }

    public void setOrderNumber(Integer orderNumber) {
        this.orderNumber = orderNumber;
    }

    public Date getPurchaseDate() {
        return purchaseDate;
    }

    public void setPurchaseDate(Date purchaseDate) {
        this.purchaseDate = purchaseDate;
    }

    public Customer getCustID() {
        return custID;
    }

    public void setCustID(Customer custID) {
        this.custID = custID;
    }

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

    public OrderLine getOrderLine() {
        return orderLine;
    }

    public void setOrderLine(OrderLine orderLine) {
        this.orderLine = orderLine;
    }

    public Collection<OrderLine> getOrderLineCollection() {
        return orderLineCollection;
    }

    public void setOrderLineCollection(Collection<OrderLine> orderLineCollection) {
        this.orderLineCollection = orderLineCollection;
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
        hash += (orderNumber != null ? orderNumber.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Orders)) {
            return false;
        }
        Orders other = (Orders) object;
        if ((this.orderNumber == null && other.orderNumber != null) || (this.orderNumber != null && !this.orderNumber.equals(other.orderNumber))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "gaia.business.Orders[ orderNumber=" + orderNumber + " ]";
    }

    public Boolean getIsProcessed() {
        return isProcessed;
    }

    public void setIsProcessed(Boolean isProcessed) {
        this.isProcessed = isProcessed;
    }

}
