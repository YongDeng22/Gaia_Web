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
//import gaia.util.*;

/**
 *
 * @author zuo
 */
public class DisplayController extends HttpServlet {

    private static final String defaultURL = "/cart.jsp";

    @Override
    public void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        String requestURI = request.getRequestURI();
        String url = "";
        if (requestURI.endsWith("/displayPlant")) {
            url = displayPlant(request, response);
        } else if (requestURI.endsWith("/displayBook")) {
            url = displayBook(request, response);
        } else if (requestURI.endsWith("/displayTool")) {
            url = displayTool(request, response);
        } /*else if (requestURI.endsWith("/checkUser")) {
         url = checkUser(request, response);
         } else if (requestURI.endsWith("/processUser")) {
         url = processUser(request, response);
         } else if (requestURI.endsWith("/displayInvoice")) {
         url = displayInvoice(request, response);
         } else if (requestURI.endsWith("/displayUser")) {
         url = "/cart/user.jsp";
         } else if (requestURI.endsWith("/displayCreditCard")) {
         url = "/cart/credit_card.jsp";
         } else if (requestURI.endsWith("/completeOrder")) {
         url = completeOrder(request, response);
         }*/

        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        String requestURI = request.getRequestURI();
//        String url = defaultURL;
//        if (requestURI.endsWith("/showCart")) {
//            showCart(request, response);
//        } else if (requestURI.endsWith("/checkUser")) {
//            // url = checkUser(request, response);
//        }
//        getServletContext()
//                .getRequestDispatcher(url)
//                .forward(request, response);
        doPost(request, response);
    }

    private String displayPlant(HttpServletRequest request,
            HttpServletResponse response) {
        HttpSession session = request.getSession();
        String code = request.getParameter("productCode");
        String zone = ZoneDB.selectPlantZone(code);
        Plant plant = ProductDB.selectPlant(Integer.parseInt(code));
        session.setAttribute("plant", plant);
        session.setAttribute("plantZone", zone);
        return "/singleProduct/singlePlant.jsp";
    }

    private String displayBook(HttpServletRequest request,
            HttpServletResponse response) {
        HttpSession session = request.getSession();
        String code = request.getParameter("productCode");
        Book book = ProductDB.selectBook(Integer.parseInt(code));
        session.setAttribute("book", book);
        return "/singleProduct/singleBook.jsp";
    }

    private String displayTool(HttpServletRequest request,
            HttpServletResponse response) {
        HttpSession session = request.getSession();
        String code = request.getParameter("productCode");
        Tools tool = ProductDB.selectTool(Integer.parseInt(code));
        session.setAttribute("tool", tool);
        return "/singleProduct/singleTool.jsp";
    }

}
