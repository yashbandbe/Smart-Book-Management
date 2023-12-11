<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>

<%
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "registration";
String userId = "root";
String password = "root";

String id = request.getParameter("id");

Connection connection = null;
PreparedStatement statement = null;

if (id != null && !id.isEmpty()) {
    try {
        Class.forName(driverName);
        connection = DriverManager.getConnection(connectionUrl + dbName, userId, password);

        String sql = "DELETE FROM issuebook WHERE id = ?";
        statement = connection.prepareStatement(sql);
        statement.setString(1, id);
        int rowsDeleted = statement.executeUpdate();

        if (rowsDeleted > 0) {
        	response.sendRedirect("viewissuebooks.jsp");  
        } else {
            out.println("Unable to delete book");
        }
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        try {
            if (statement != null) {
                statement.close();
            }
            if (connection != null) {
                connection.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
%>
