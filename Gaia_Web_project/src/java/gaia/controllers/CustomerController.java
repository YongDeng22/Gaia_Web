package gaia.controllers;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

import gaia.business.Customer;
import gaia.business.Login;
import gaia.data.CustomerDB;
import gaia.data.LoginDB;
import static gaia.data.LoginDB.selectLogin;

public class CustomerController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
//        String url = "/user/register.jsp";
        String requestURI = request.getRequestURI();

        String url = "";
        if (requestURI.endsWith("/login")) {
            url = login(request, response);
        } else if (requestURI.endsWith("/register")) {
            url = register(request, response);
        } else if (requestURI.endsWith("/logout")) {
            url = logout(request, response);
        }

        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);

    }

    public String register(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String url;
        HttpSession session = request.getSession();

        String userName = request.getParameter("userName");
        String password = request.getParameter("password");
        String password2 = request.getParameter("password2");
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String street = request.getParameter("street");
        String city = request.getParameter("city");
        String states = request.getParameter("states");
        String zip = request.getParameter("zip");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");

        // store data in Custoemr object
        Customer customer = new Customer();
        customer.setEmail(email);
        customer.setFirstName(firstName);
        customer.setLastName(lastName);
        customer.setStreet(street);
        customer.setCity(city);
        customer.setStates(states);
        customer.setZip(zip);
        customer.setPhone(phone);

        Login login = new Login();
        login.setUserName(userName);
        login.setPassword(password);
//        login.setCustID(customer);
//        login.setCustomerCustID(customer);

        // validate the parameters
        String messageUserName = "";
        String messagePassword = "";

        if (LoginDB.userNameExists(login.getUserName())) {
            messageUserName = "The User Name is already exists.<br>"
                    + "Please enter another User Name.";
            url = "/user/register.jsp";
        } else {
            if (password.equals(password2)) {
                url = "/user/thanks.jsp";
                
                CustomerDB.insert(customer);
                
                login.setCustID(CustomerDB.selectCustomer(email));
                LoginDB.insert(login);
                session.setAttribute("customer", customer);
                session.setAttribute("login", login);
            } else {
                messagePassword = "The password does not match";
                url = "/user/register.jsp";
            }
        }

        session.setAttribute("messageUserName", messageUserName);
        session.setAttribute("messagePassword", messagePassword);
        return url;
    }

    public String login(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String url = "/cart/cart.jsp";
        HttpSession session = request.getSession();

        String message;
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        if (LoginDB.userExists(username, password)) {
            Login login = selectLogin(username, password);
            message = "You are logged in as " + login.getCustID().getFirstName();
            session.setAttribute("login", login);
            session.setAttribute("customer", login.getCustID());
        } else {
            message = "The username or password is incorrect."
                    + " Please check your username and password and try again.";
            url = "/user/login_error.jsp";
        }
        session.setAttribute("message", message);

        return url;
    }

    public String logout(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String url = "/user/logout.jsp";
        HttpSession session = request.getSession();
        String message;
        message = "You have sucessfully logged out.";
        session.setAttribute("message", message);
        session.setAttribute("login", null);
        return url;
    }
}
