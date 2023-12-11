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

@WebServlet("/issuebook")
public class issuebook extends HttpServlet {
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
        String name = request.getParameter("name");

        String contact = request.getParameter("contact");
        String address = request.getParameter("address");
        String issuedate = request.getParameter("issuedate");
        String duedate = request.getParameter("duedate");

        

        try (Connection conn = DriverManager.getConnection(url, username, password)) {
            String query = "INSERT INTO issuebook (book_name, author, price, pages, edition, name,contact,address,issuedate,duedate) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?,?)";
            PreparedStatement preparedStatement = conn.prepareStatement(query);
            preparedStatement.setString(1, bookName);
            preparedStatement.setString(2, author);
            preparedStatement.setDouble(3, price);
            preparedStatement.setInt(4, pages);
            preparedStatement.setString(5, edition);
         
            preparedStatement.setString(6, name);
            preparedStatement.setString(7, contact);
            preparedStatement.setString(8, address);
            preparedStatement.setString(9, issuedate);
            preparedStatement.setString(10, duedate);
         
            System.out.println("Name: " + bookName);
            System.out.println("Contact: " + contact);
            System.out.println("Address: " + address);
            System.out.println("Issue Date: " + issuedate);
            System.out.println("Due Date: " + duedate);
            
            
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