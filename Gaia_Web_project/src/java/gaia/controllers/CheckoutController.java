/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author yongdeng
 * @since 6-25-2015
 */
package gaia.controllers;

import gaia.business.*;
import gaia.data.*;
import gaia.util.MailUtil;
import java.io.IOException;
import java.util.Collection;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.*;

public class CheckoutController extends HttpServlet {

//    private static final String defaultURL = "/cart/cart.jsp";
    @Override
    public void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        String requestURI = request.getRequestURI();
        String url = "/cart/cart.jsp";
        if (requestURI.endsWith("/checkUser")) {
            url = checkUser(request, response);
        } else if (requestURI.endsWith("/processUser")) {
            url = processUser(request, response);
        } else if (requestURI.endsWith("/displayInvoice")) {
            url = displayInvoice(request, response);
        } else if (requestURI.endsWith("/displayUser")) {
            url = "/user/thanks.jsp";
        } else if (requestURI.endsWith("/displayCreditCard")) {
            url = "/cart/credit_card.jsp";
        } else if (requestURI.endsWith("/completeOrder")) {
            url = completeOrder(request, response);
        }

        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

    //added by Yong Deng 6-25-2015
    private String checkUser(HttpServletRequest request,
            HttpServletResponse response) {

        HttpSession session = request.getSession();
        Customer customer = (Customer) session.getAttribute("customer");

        // if the User object exists with street address, skip User page
        String url = "/user/login.jsp";
        if (customer != null) {
            url = "/cart/invoice.jsp";
        }
        return url;
    }

    private String processUser(HttpServletRequest request,
            HttpServletResponse response) {

        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String street = request.getParameter("street");
        String city = request.getParameter("city");
        String state = request.getParameter("state");
        String zip = request.getParameter("zip");
        String phone = request.getParameter("phone");
//        String country = request.getParameter("country");

        HttpSession session = request.getSession();
        Customer customer = (Customer) session.getAttribute("customer");
        if (customer == null) {
            customer = new Customer();
        }

        customer.setFirstName(firstName);
        customer.setLastName(lastName);
        customer.setEmail(email);
        customer.setStreet(street);
        customer.setCity(city);
        customer.setStates(state);
        customer.setZip(zip);
        customer.setPhone(phone);

        if (CustomerDB.emailExists(email)) {
            CustomerDB.update(customer);
        } else {
            CustomerDB.insert(customer);
        }
        session.setAttribute("customer", customer);

        return "/cart/invoice.jsp";
    }

    private String displayInvoice(HttpServletRequest request,
            HttpServletResponse response) {
        HttpSession session = request.getSession();
        Customer customer = (Customer) session.getAttribute("customer");
        Cart cart = (Cart) session.getAttribute("cart");
        java.util.Date today = new java.util.Date();
        Orders order = new Orders();
        order.setCustomer(customer);
        order.setPurchaseDate(today);
        order.setOrderLineCollection(cart.getItems());
        session.setAttribute("order", order);
        return "/cart/invoice.jsp";
    }

    private String completeOrder(HttpServletRequest request,
            HttpServletResponse response) {

        HttpSession session = request.getSession();
        Customer customer = (Customer) session.getAttribute("customer");
        Orders order = (Orders) session.getAttribute("order");

        OrderDB.insert(order);

        session.setAttribute("cart", null);

        String creditCardType
                = request.getParameter("creditCardType");
        String creditCardNumber
                = request.getParameter("creditCardNumber");
        String creditCardExpMonth
                = request.getParameter("creditCardExpirationMonth");
        String creditCardExpYear
                = request.getParameter("creditCardExpirationYear");

//        customer.setCreditCardType(creditCardType);
//        customer.setCreditCardNumber(creditCardNumber);
//        customer.setCreditCardExpirationDate(creditCardExpMonth
//                + "/" + creditCardExpYear);
        // if a record for the User object exists, update it
//        if (CustomerDB.emailExists(customer.getEmail())) {
//            CustomerDB.update(customer);
//        } else { // otherwise, write a new record for the user            
//            CustomerDB.insert(customer);
//        }
//         write a new invoice record
//        OrderDB.insert(order);
//        for (OrderLine ol: order.getOrderLineCollection()) {
//            OrderLineDB.insert(ol);
//        }
        // remove all items from the user's cart
//        session.setAttribute("cart", null);
        //send an email to the user to confirm the order.
        String to = customer.getEmail();
        String from = "custserv@gaias.com";
        String subject = "Order Confirmation";
        String message = "Dear " + customer.getFirstName() + ",\n\n"
                + "Thanks for ordering from us. "
                + "You should receive your order in 3-5 business days. "
                + "Please contact us if you have any questions.\n"
                + "Have a great day and thanks again!\n\n"
                + "Yong Deng\n"
                + "Gaia's Plant World";
        session.setAttribute("message", message);
        boolean isBodyHTML = false;
        try {
            MailUtil.sendMail(to, from, subject, message, isBodyHTML);
        } catch (Exception e) {
            this.log(
                    "Unable to send email. \n"
                    + "You may need to configure your system as "
                    + "described in chapter 15. \n"
                    + "Here is the email you tried to send: \n"
                    + "=====================================\n"
                    + "TO: " + to + "\n"
                    + "FROM: " + from + "\n"
                    + "SUBJECT: " + subject + "\n"
                    + "\n"
                    + message + "\n\n");
        }

        return "/cart/complete.jsp";
    }
}
