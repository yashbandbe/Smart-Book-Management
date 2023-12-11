package com.loginpage;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.beans.Product;


/**
 * Servlet implementation class Add_Servlet
 */
@WebServlet("/register")
public class Add_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Add_Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		
		String bname = request.getParameter("name");	
		String bauth = request.getParameter("author");
		String bprice = request.getParameter("price");
		String bpage = request.getParameter("pages");
		String bedi = request.getParameter("edition");
		String image = request.getParameter("image");
		Product p = new Product();
		p.setBname(bname);
		p.setBauth(bauth);
		p.setBprice(bprice);
		p.setBpage(bpage);
		p.setBedi(bedi);
		p.setImage("Images/"+image);
		
		RequestDispatcher dispatcher = null;
		Connection con = null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/registration?useSSL = false","root","root");
			PreparedStatement pst = con.prepareStatement("insert into booksdata(bname,bauth,bprice,bpage,bedi,image) values(?,?,?,?,?,?)");
			pst.setString(1, bname);
			pst.setString(2, bauth);
			pst.setString(3, bprice);
			pst.setString(4, bpage);
			pst.setString(5, bedi);
			pst.setString(6,image);
            
		
		
		
			int rowCount = pst.executeUpdate();
			dispatcher = request.getRequestDispatcher("add_books.jsp");
			if(rowCount > 0) {
				request.setAttribute("status", "success");
				
			}else
			{
				request.setAttribute("status", "failed");
			}
			dispatcher.forward(request, response);
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

}
