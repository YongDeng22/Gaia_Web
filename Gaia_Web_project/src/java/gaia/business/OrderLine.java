/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gaia.business;

import java.io.Serializable;
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
import javax.persistence.Table;

/**
 *
 * @author yongdeng
 */
@Entity
@Table(name = "OrderLine")
@NamedQueries({
    @NamedQuery(name = "OrderLine.findAll", query = "SELECT o FROM OrderLine o")})
public class OrderLine implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "OrderNumber")
    private Integer orderNumber;
    @Column(name = "Quantity")
    private Integer quantity;
    @JoinColumn(name = "OrderNumber", referencedColumnName = "OrderNumber", insertable = false, updatable = false)
    @ManyToOne(optional = false, cascade = CascadeType.ALL)
    private Orders orders;
    @JoinColumn(name = "ProductID", referencedColumnName = "ProductID")
    @ManyToOne(optional = false)
    private Product product;
    @JoinColumn(name = "Orders_OrderNumber", referencedColumnName = "OrderNumber")
    @ManyToOne(optional = false, cascade = CascadeType.ALL)
    private Orders ordersOrderNumber;
    @Column(name = "subTotal")
    private String subTotal;

    public OrderLine() {
        quantity = 1;
    }

    public OrderLine(Integer orderNumber) {
        this.orderNumber = orderNumber;
    }

    public Integer getOrderNumber() {
        return orderNumber;
    }

    public void setOrderNumber(Integer orderNumber) {
        this.orderNumber = orderNumber;
    }

    public Integer getQuantity() {
        return quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }

    public Orders getOrders() {
        return orders;
    }

    public void setOrders(Orders orders) {
        this.orders = orders;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public Orders getOrdersOrderNumber() {
        return ordersOrderNumber;
    }

    public void setOrdersOrderNumber(Orders ordersOrderNumber) {
        this.ordersOrderNumber = ordersOrderNumber;
    }

    public String getSubTotal() {
        subTotal = String.format("%.2f", quantity * product.getPrice());
        return subTotal;
    }

    public void setSubTotal(String subTotal) {
//        subTotal = String.format("%.2f", quantity * product.getPrice());
        this.subTotal = subTotal;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (orderNumber != null ? orderNumber.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof OrderLine)) {
            return false;
        }
        OrderLine other = (OrderLine) object;
        if ((this.orderNumber == null && other.orderNumber != null) || (this.orderNumber != null && !this.orderNumber.equals(other.orderNumber))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "gaia.business.OrderLine[ orderNumber=" + orderNumber + " ]";
    }

}
