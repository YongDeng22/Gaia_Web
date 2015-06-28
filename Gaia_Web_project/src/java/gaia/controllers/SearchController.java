/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gaia.controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.*;

import gaia.business.*;
import gaia.data.*;
import java.util.List;
import javax.persistence.NoResultException;

/**
 *
 * @author yongdeng
 */
public class SearchController extends HttpServlet {

    private static final String defaultURL = "/search.jsp";

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String url = defaultURL;

        HttpSession session = request.getSession();
        String keyword = request.getParameter("keyword").toUpperCase();
        List<Product> searchList = ProductDB.selectProducts(keyword);

        session.setAttribute("searchResult", searchList);
        session.setAttribute("searchCount", searchList.size());
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }
}
