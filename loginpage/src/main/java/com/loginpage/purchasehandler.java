package com.loginpage;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/purchasehandler")
public class purchasehandler extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String url = "jdbc:mysql://localhost:3306/registration"; // Replace 'your_database_name' with your actual database name
        String username = "root"; // Replace 'your_username' with your MySQL username
        String password = "root"; // Replace 'your_password' with your MySQL password

        String bookName = request.getParameter("bname");
        String author = request.getParameter("bauth");
        double price = Double.parseDouble(request.getParameter("bprice"));
        int pages = Integer.parseInt(request.getParameter("bpage"));
        String edition = request.getParameter("bedi");
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        String name = request.getParameter("name");

        String contact = request.getParameter("contact");
        String address = request.getParameter("address");

        

        try (Connection conn = DriverManager.getConnection(url, username, password)) {
            String query = "INSERT INTO buybookdb (book_name, author, price, pages, edition, quantity,name,contact,address) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement preparedStatement = conn.prepareStatement(query);
            preparedStatement.setString(1, bookName);
            preparedStatement.setString(2, author);
            preparedStatement.setDouble(3, price);
            preparedStatement.setInt(4, pages);
            preparedStatement.setString(5, edition);
            preparedStatement.setInt(6, quantity);
            preparedStatement.setString(7, name);
            preparedStatement.setString(8, contact);
            preparedStatement.setString(9, address);
         
            System.out.println("Name: " + bookName);
            System.out.println("Contact: " + contact);
            System.out.println("Address: " + address);
            
            
            int rowsInserted = preparedStatement.executeUpdate();
            if (rowsInserted > 0) {
                response.sendRedirect("studhome.jsp"); // Redirect to a success page
            } else {
                response.sendRedirect("login.jsp"); // Redirect to an error page
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
            response.sendRedirect("add_books.jsp"); // Redirect to an error page
        }
    }
}