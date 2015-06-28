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
/**
 *
 * @author zuo
 */
public class HardinessZoneController extends HttpServlet {
    private static final String defaultURL = "/zone.jsp";
    
     @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String requestURI = request.getRequestURI();
        String url = defaultURL;
        if (requestURI.endsWith("/findZone")) {
            HttpSession session = request.getSession();
            String code = request.getParameter("zipcode");
            HardinessZone hz = ZoneDB.selectZone( code );
            session.setAttribute("hardinessZone", hz);
        }
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }
    
}
