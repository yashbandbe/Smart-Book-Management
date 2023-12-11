package com.loginpage;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class MyClass {
	private String dburl = "jdbc:mysql://localhost:3306/library";
	private String dbuname = "root";
	private String dbpassword = "root";
	private String dbdriver = "com.mysql.jdbc.Driver";
	public void loadDriver(String dbdriver)
	{
		try {
			Class.forName(dbdriver);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public Connection getConnection()
	{
		Connection con = null; // Ensure it's initialized to null
		try {
		    // Code to establish connection
		    con = DriverManager.getConnection(dburl, dbuname, dbpassword);
		    System.out.print("connected");

		    // Rest of your code
		} catch (SQLException e) {
		    e.printStackTrace(); }
		return con;

	}
	
	public String insert(Member member)
	{
		loadDriver(dbdriver);
		Connection con = getConnection();
		String result = "data entered successfully";
		String sql = "insert into library.member values(?,?,?,?,?,?)";
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, member.getfirstname());
			ps.setString(2, member.getlastname());
			ps.setString(3, member.getEmail_Id());
			ps.setString(4, member.getpassword());
			ps.setString(5, member.getgender());
			ps.setString(6, member.getnumber());
			ps.executeUpdate();
		}catch (SQLException e) {
			e.printStackTrace();
			result="Data not entered";
		}
		return result;
		
	}
}


