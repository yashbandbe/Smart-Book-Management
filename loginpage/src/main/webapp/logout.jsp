<%@ page import="javax.servlet.http.HttpSession" %>

<%
    HttpSession userSession = request.getSession(true); // Renamed the variable to userSession
    if(userSession != null) {
        userSession.invalidate();
    }
    
    response.sendRedirect("main_home.jsp");
%>