/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gaia.business;

import java.util.*;
import java.io.Serializable;

/**
 *
 * @author zuo
 */
public class Cart implements Serializable {

    private List<OrderLine> items;
    private String total;
    private Date date = new Date();

    public Cart() {
        items = new ArrayList<>();
    }

    public void setItems(List<OrderLine> lineItems) {
        items = lineItems;
    }

    public List<OrderLine> getItems() {
        return items;
    }

    public Date getDate() {
        return date;
    }
    
    public void setDate(Date date) {
        this.date=date;
    }
    
    public int getCount() {
        return items.size();
    }

    public String getTotal() {
        Double totalPrice = 0.;
        for (OrderLine item: items) {
            totalPrice += item.getProduct().getPrice() * item.getQuantity();
        }
        return String.format("%.2f",totalPrice);
    }

    public void addItem(OrderLine item) {
        //If the item already exists in the cart, only the quantity is changed.
        Integer code = item.getProduct().getProductID();
        Integer quantity = item.getQuantity();
        for (OrderLine lineItem : items) {
            if (Objects.equals(lineItem.getProduct().getProductID(), code)) {
                lineItem.setQuantity(quantity++);
                return;
            }
        }
        items.add(item);
    }

    public void removeItem(OrderLine item) {
        int code = item.getProduct().getProductID();
        for (int i = 0; i < items.size(); i++) {
            OrderLine lineItem = items.get(i);
            if (lineItem.getProduct().getProductID() == code) {
                items.remove(i);
                return;
            }
        }
    }
}
