package com.loginpage;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/displayissue")
public class displayissue extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // JDBC database connection parameters
        String jdbcUrl = "jdbc:mysql://localhost:3306/registration";
        String user = "root";
        String password = "root";

        try {
            // Load JDBC driver
            Class.forName("com.mysql.jdbc.Driver");

            // Establish database connection
            Connection connection = DriverManager.getConnection(jdbcUrl, user, password);

            // Prepare SQL query
            String sqlQuery = "SELECT * FROM issuebook";
            PreparedStatement preparedStatement = connection.prepareStatement(sqlQuery);

            // Execute query and get result set
            ResultSet resultSet = preparedStatement.executeQuery();

            // Set result set as an attribute in the request
            request.setAttribute("result", resultSet);

            // Forward the request to the JSP page
            request.getRequestDispatcher("/viewissuebooks.jsp").forward(request, response);

            // Close resources
            resultSet.close();
            preparedStatement.close();
            connection.close();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }
}
