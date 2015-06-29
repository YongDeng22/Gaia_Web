/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gaia.controllers;

import java.io.IOException;
//import javax.mail.MessagingException;
import javax.servlet.ServletException;
import javax.servlet.http.*;

import gaia.business.*;
import gaia.data.*;
import java.util.Date;
import java.util.List;
//import gaia.util.*;

/**
 *
 * @author zuo
 * @modified by Yong Deng
 */
public class OrderController extends HttpServlet {

    private static final String defaultURL = "/cart/cart.jsp";

    @Override
    public void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        String requestURI = request.getRequestURI();
        String url = defaultURL;
        if (requestURI.endsWith("/addItem")) {
            url = addItem(request, response);
        } else if (requestURI.endsWith("/updateItem")) {
            url = updateItem(request, response);
        } else if (requestURI.endsWith("/removeItem")) {
            url = removeItem(request, response);
        }

        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String requestURI = request.getRequestURI();
        String url = defaultURL;
        if (requestURI.endsWith("/showCart")) {
            showCart(request, response);
        } else if (requestURI.endsWith("/checkUser")) {
            // url = checkUser(request, response);
        }
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }

    private String showCart(HttpServletRequest request,
            HttpServletResponse response) {
        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        if (cart == null || cart.getCount() == 0) {
            request.setAttribute("emptyCart", "Your cart is empty");
        } else {
            request.getSession().setAttribute("cart", cart);
        }
        return defaultURL;
    }

    private String addItem(HttpServletRequest request,
            HttpServletResponse response) {
        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        if (cart == null) {
            cart = new Cart();
        }
        String productCode = request.getParameter("productCode");
        Product product = ProductDB.selectProduct(Integer.parseInt(productCode));
        if (product != null) {
            OrderLine orderline = new OrderLine();
            orderline.setProduct(product);
            orderline.setQuantity(orderline.getQuantity());
            cart.addItem(orderline);
        }
        session.setAttribute("cart", cart);
        return defaultURL;
    }

    private String updateItem(HttpServletRequest request,
            HttpServletResponse response) {
        String quantityString = request.getParameter("quantity");
        String productCode = request.getParameter("productCode");
        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        int quantity;
        try {
            quantity = Integer.parseInt(quantityString);
            if (quantity < 0) {
                quantity = 1;
            }
        } catch (NumberFormatException ex) {
            quantity = 1;
        }
        Product product = ProductDB.selectProduct(Integer.parseInt(productCode));
        if (product != null && cart != null) {
            OrderLine orderline = new OrderLine();
            orderline.setProduct(product);
            orderline.setQuantity(quantity);
            if (quantity > 0) {
                cart.addItem(orderline);
            } else {
                cart.removeItem(orderline);
            }
        }
        return defaultURL;
    }

    private String removeItem(HttpServletRequest request,
            HttpServletResponse response) {
        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        String productCode = request.getParameter("productCode");
        Product product = ProductDB.selectProduct(Integer.parseInt(productCode));
        if (product != null && cart != null) {
            OrderLine orderline = new OrderLine();
            orderline.setProduct(product);
            cart.removeItem(orderline);
        }
        return defaultURL;
    }

}
