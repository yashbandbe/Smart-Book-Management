package com.loginpage;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/liblogin_servlet")
public class liblogin_servlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        boolean isValid = validateCredentials(username, password);

        if (isValid) {
            // Credentials are correct, redirect to the main page
            response.sendRedirect("librarian_home.jsp");
        } else {
            // Credentials are incorrect, show an error message on the login page
            String errorMessage = "Invalid username or password. Please try again.";
            request.setAttribute("errorMessage", errorMessage);
            request.getRequestDispatcher("liblogin.jsp").forward(request, response);
        }
    }

    private boolean validateCredentials(String username, String password) {
        return "admin".equals(username) && "admin".equals(password);
    }
}
