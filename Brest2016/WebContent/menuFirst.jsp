<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<script type="text/javascript" src="jquery/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="bootstrap/bootstrap.min.js"></script>
<link href="bootstrap/bootstrap.min.css" rel="stylesheet" type="text/css" />
 <%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>

 
</head>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                </button>
                <a href="#" class="navbar-brand">Brest-2016</a>
            </div>

                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                           <li class="dropdown">
    						<a href="#" class="dropdown-toggle" data-toggle="dropdown">Mon compte<b class="caret"></b></a>
    						<ul class="dropdown-menu">
    						
        						<li role="presentation"> <a href="<c:url value="index.jsp">  
        							<c:param name="action" value="inscription"/>        							  
       								</c:url>" role="menuitem"> Inscription Test</a>
       							</li>
       								
        						<li><a href="#" id="ong1">Onglet2</a></li>
        						
        						<li><a href="#" id="ong1">Onglet13</a></li>
    						</ul>
						</li>  

                          <li class="dropdown">
    						<a href="#" class="dropdown-toggle" data-toggle="dropdown">Reservation<b class="caret"></b></a>
    						<ul class="dropdown-menu">
        						<li><a href="#" id="ong1">Reservation</a></li>
        						<li><a href="#" id="ong1">Onglet2</a></li>
        						<li><a href="#" id="ong1">Onglet13</a></li>
    						</ul>
						</li>  
	
	                    <li class="dropdown">
    						<a href="#" class="dropdown-toggle" data-toggle="dropdown">Edit<b class="caret"></b></a>
    						<ul class="dropdown-menu">
        						<li><a href="#" id="ong1">Onglet1</a></li>
        						<li><a href="#" id="ong1">Onglet2</a></li>
        						<li><a href="#" id="ong1">Onglet13</a></li>
    						</ul>
						</li>

                        <li><a href="#">Help</a></li>

                        <form class="navbar-form navbar-left" role="search">
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="Search">
                            </div>
                                <button type="submit" class="btn btn-success">Submit</button>
                        </form>                     
                    </ul>
                </div>
        </div>
    </nav>

</body>
</html>