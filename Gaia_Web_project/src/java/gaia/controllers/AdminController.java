/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gaia.controllers;

/**
 *
 * @author yongdeng
 * @since 6-29-2015
 */
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

//import org.apache.poi.hssf.usermodel.HSSFWorkbook;
//import org.apache.poi.ss.usermodel.Workbook;
import gaia.business.*;
import gaia.data.*;

public class AdminController extends HttpServlet {

    @Override
    public void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws IOException, ServletException {

        String requestURI = request.getRequestURI();
        String url = "/adminController";
        if (requestURI.endsWith("/displayInvoices")) {
            url = displayInvoices(request, response);
        } else if (requestURI.endsWith("/processInvoice")) {
            url = processInvoice(request, response);
        }

        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }

    @Override
    public void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws IOException, ServletException {

        String requestURI = request.getRequestURI();
        String url = "/adminController";
        if (requestURI.endsWith("/displayInvoice")) {
            url = displayInvoice(request, response);
        } else if (requestURI.endsWith("/displayInvoices")) {
            url = displayInvoices(request, response);
        }

        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }

    private String displayInvoices(HttpServletRequest request,
            HttpServletResponse response) throws IOException {

        List<Orders> unprocessedInvoices
                = OrderDB.selectUnprocessedInvoices();

        String url;
        if (unprocessedInvoices != null) {
            if (unprocessedInvoices.size() <= 0) {
                unprocessedInvoices = null;
            }
        }

        HttpSession session = request.getSession();
        session.setAttribute("unprocessedInvoices", unprocessedInvoices);
        url = "/admin/invoices.jsp";
        return url;
    }

    
    
    
    private String displayInvoice(HttpServletRequest request,
            HttpServletResponse response) {

        HttpSession session = request.getSession();

        String invoiceNumberString = request.getParameter("invoiceNumber");
        int orderNumber = Integer.parseInt(invoiceNumberString);
        List<Orders> unprocessedInvoices = (List<Orders>) session.getAttribute("unprocessedInvoices");

        Orders order = null;
        for (Orders unprocessedInvoice : unprocessedInvoices) {
            order = unprocessedInvoice;
            if (order.getOrderNumber() == orderNumber) {
                break;
            }
        }
        System.out.println("*****"+order.getOrderNumber());
        System.out.println("@@@@@@@"+order);

        session.setAttribute("order", order);

        return "/admin/invoice.jsp";
    }

    private String processInvoice(HttpServletRequest request,
            HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession();

        Orders order = (Orders) session.getAttribute("order");
        OrderDB.update(order);

        return "/admin/displayInvoices";
    }

}
