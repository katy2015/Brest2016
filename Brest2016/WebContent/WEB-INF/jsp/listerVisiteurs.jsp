<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Liste des visiteurs</title>
</head>
<body style="color: green;">
	Liste des visiteurs
	<ul>
	<c:forEach items="${visiteurs}" var="client">
		<li>Nom : <c:out value="${visiteur.nom}" />; Prénom : <c:out value="${visiteur.nom}"/>
	</c:forEach>
	</ul>
</body>
</html>