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
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

/**
 *
 * @author yongdeng
 */
@Entity
@Table(name = "HardinessZone")
@NamedQueries({
    @NamedQuery(name = "HardinessZone.findAll", query = "SELECT h FROM HardinessZone h")})
public class HardinessZone implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "Zip")
    private String zip;
    @Column(name = "City")
    private String city;
    @Column(name = "State")
    private String state;
    @Column(name = "Zone")
    private Integer zone;

    public HardinessZone() {
    }

    public HardinessZone(String zip) {
        this.zip = zip;
    }

    public String getZip() {
        return zip;
    }

    public void setZip(String zip) {
        this.zip = zip;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public Integer getZone() {
        return zone;
    }

    public void setZone(Integer zone) {
        this.zone = zone;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (zip != null ? zip.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof HardinessZone)) {
            return false;
        }
        HardinessZone other = (HardinessZone) object;
        if ((this.zip == null && other.zip != null) || (this.zip != null && !this.zip.equals(other.zip))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "gaia.business.HardinessZone[ zip=" + zip + " ]";
    }
    
}
