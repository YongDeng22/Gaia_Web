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
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 *
 * @author yongdeng
 */
@Entity
@Table(name = "Customer")
@NamedQueries({
    @NamedQuery(name = "Customer.findAll", query = "SELECT c FROM Customer c"),
    @NamedQuery(name = "Customer.findByCustID", query = "SELECT c FROM Customer c WHERE c.custID = :custID"),
    @NamedQuery(name = "Customer.findByFirstName", query = "SELECT c FROM Customer c WHERE c.firstName = :firstName"),
    @NamedQuery(name = "Customer.findByLastName", query = "SELECT c FROM Customer c WHERE c.lastName = :lastName"),
    @NamedQuery(name = "Customer.findByStreet", query = "SELECT c FROM Customer c WHERE c.street = :street"),
    @NamedQuery(name = "Customer.findByCity", query = "SELECT c FROM Customer c WHERE c.city = :city"),
    @NamedQuery(name = "Customer.findByStates", query = "SELECT c FROM Customer c WHERE c.states = :states"),
    @NamedQuery(name = "Customer.findByZip", query = "SELECT c FROM Customer c WHERE c.zip = :zip"),
    @NamedQuery(name = "Customer.findByPhone", query = "SELECT c FROM Customer c WHERE c.phone = :phone"),
    @NamedQuery(name = "Customer.findByEmail", query = "SELECT c FROM Customer c WHERE c.email = :email")})
public class Customer implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "CustID")
    private Integer custID;
    @Column(name = "FirstName")
    private String firstName;
    @Column(name = "LastName")
    private String lastName;
    @Column(name = "Street")
    private String street;
    @Column(name = "City")
    private String city;
    @Column(name = "States")
    private String states;
    @Column(name = "Zip")
    private String zip;
    @Basic(optional = false)
    @Column(name = "Phone")
    private String phone;
    @Basic(optional = false)
    @Column(name = "Email")
    private String email;
    @OneToMany(mappedBy = "custID")
    private Collection<Orders> ordersCollection;
//    @OneToMany(cascade = CascadeType.ALL, mappedBy = "customerCustID")
//    private Collection<Orders> ordersCollection1;
//    @JoinColumn(name = "CustomerReview_ReviewID", referencedColumnName = "ReviewID")
//    @ManyToOne
//    private CustomerReview customerReviewReviewID;
//    @OneToMany(mappedBy = "custID")
//    private Collection<CustomerReview> customerReviewCollection;

    public Customer() {
    }

    public Customer(Integer custID) {
        this.custID = custID;
    }

    public Customer(Integer custID, String phone, String email) {
        this.custID = custID;
        this.phone = phone;
        this.email = email;
    }

    public Integer getCustID() {
        return custID;
    }

    public void setCustID(Integer custID) {
        this.custID = custID;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getStreet() {
        return street;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getStates() {
        return states;
    }

    public void setStates(String states) {
        this.states = states;
    }

    public String getZip() {
        return zip;
    }

    public void setZip(String zip) {
        this.zip = zip;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Collection<Orders> getOrdersCollection() {
        return ordersCollection;
    }

    public void setOrdersCollection(Collection<Orders> ordersCollection) {
        this.ordersCollection = ordersCollection;
    }

//    public Collection<Orders> getOrdersCollection1() {
//        return ordersCollection1;
//    }
//
//    public void setOrdersCollection1(Collection<Orders> ordersCollection1) {
//        this.ordersCollection1 = ordersCollection1;
//    }

//    public CustomerReview getCustomerReviewReviewID() {
//        return customerReviewReviewID;
//    }
//
//    public void setCustomerReviewReviewID(CustomerReview customerReviewReviewID) {
//        this.customerReviewReviewID = customerReviewReviewID;
//    }
//
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
        hash += (custID != null ? custID.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Customer)) {
            return false;
        }
        Customer other = (Customer) object;
        if ((this.custID == null && other.custID != null) || (this.custID != null && !this.custID.equals(other.custID))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "gaia.business.Customer[ custID=" + custID + " ]";
    }
    
}
