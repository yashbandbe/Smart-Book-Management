package com.DAO;

import java.sql.PreparedStatement;

import com.loginpage.BookDtls;

import java.sql.Connection;

public class BookDAOImp implements BookDAO{
	

private Connection conn;

public  BookDAOImp(Connection conn) {
	super();
	this.conn =conn;
}
public boolean addBooks (BookDtls b) {
boolean f=false;
try {
String sql="insert into book_dtls (bookname, author, price, bookCategory, status, photo, email)values(?,?,?,?,?,?,?)"; 
PreparedStatement ps=conn.prepareStatement (sql);
ps.setString(1, b.getBookName());
ps.setString(2, b.getAuthor()); 
ps.setString(3, b.getPrice());
ps.setString(4, b.getBookCategory());
ps.setString(5, b.getStatus());
ps.setString(6, b.getPhotoName()); 
ps.setString(7, b.getEmail());

int i =ps.executeUpdate();
if(i==1) {
	f= true;
}


} catch (Exception e) {
}
return f;
}}