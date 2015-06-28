/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gaia.controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.*;

/**
 *
 * @author zuo
 */
public class CatalogController extends HttpServlet {
    
    @Override
    public void doGet(HttpServletRequest request, 
            HttpServletResponse response)
            throws ServletException, IOException {
        
        String requestURI = request.getRequestURI();
        String url = "/index.jsp";
        if (requestURI.endsWith("/catalog")) {
            url = "/index.jsp";
        } 
        
        getServletContext()
            .getRequestDispatcher(url)
            .forward(request, response);
    }
}
