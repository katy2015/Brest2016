<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  

    
<%
if (request.getParameter("action") == null) {
    out.println("erreur l'url");
} else {
	response.sendRedirect("inscription.htm");
}

%>
