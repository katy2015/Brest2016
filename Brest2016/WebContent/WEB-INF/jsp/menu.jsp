<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Test</title>
</head>
<body>
<!--header-->
<div class="header">
	<div class="header-top">
		<div class="container">
			<div class="social">
				<ul>
					<li><a href="#"><i class="facebok"> </i></a></li>
					<li><a href="#"><i class="twiter"> </i></a></li>
					<li><a href="#"><i class="inst"> </i></a></li>
					<li><a href="#"><i class="goog"> </i></a></li>
						<div class="clearfix"></div>	
				</ul>
			</div>
			<div class="header-left">
			
				<div class="search-box">
					<div id="sb-search" class="sb-search">
						<form>
							<input class="sb-search-input" placeholder="Enter your search term..." type="search"  id="search">
							<input class="sb-search-submit" type="submit" value="">
							<span class="sb-icon-search"> </span>
						</form>
					</div>
				</div>
			
<!-- search-scripts -->
					<script src="js/classie.js"></script>
					<script src="js/uisearch.js"></script>
						<script>
							new UISearch( document.getElementById( 'sb-search' ) );
						</script>
					<!-- //search-scripts -->

				<div class="ca-r">
					<div class="cart box_1">
						<a href="checkout.jsp">
						<h3> <div class="total">
							<span class="simpleCart_total"></span> </div>
							<img src="images/cart.png" alt=""/></h3>
						</a>
						<p><a href="javascript:;" class="simpleCart_empty">Panier vide</a></p>

					</div>
				</div>
					<div class="clearfix"> </div>
			</div>
				
		</div>
		</div>
		<div class="container">
			<div class="head-top">
				<div class="logo">
					<h1><a href="<c:url value="index.htm">  
        							       							  
       								</c:url>"> Brest-2016</a></h1>
				</div>
		  <div class=" h_menu4">
				<ul class="memenu skyblue">
					  <li><a class="color8" href="index.jsp">BED LINEN</a></li>	
				      <li><a class="color1" href="#">CUSHIONS</a>
				      	<div class="mepanel">
						<div class="row">
							<div class="col1">
								<div class="h_nav">
									<ul>
										<li><a href="products.jsp">Bedskirt</a></li>
										<li><a href="products.jsp">Blanket/Throw</a></li>
										<li><a href="products.jsp">Collection/Duvet</a></li>
										<li><a href="products.jsp">Comforter</a></li>
										<li><a href="products.jsp">Comforter Set</a></li>
										<li><a href="products.jsp">Decorative Pillow</a></li>
										<li><a href="products.jsp">Mattress Pad </a></li>
										<li><a href="products.jsp">Mattress Topper</a></li>
										<li><a href="products.jsp">Pillow</a></li>
										<li><a href="products.jsp">Pillow Protector</a></li>
										
									</ul>	
								</div>							
							</div>
							<div class="col1">
								<div class="h_nav">
									<ul>
										<li><a href="products.jsp">Alpaca</a></li>
										<li><a href="products.jsp">Cashmere</a></li>
										<li><a href="products.jsp">Cotton</a></li>
										<li><a href="products.jsp">Cotton Blend</a></li>
										<li><a href="products.jsp">Down</a></li>
										<li><a href="products.jsp">Down Alternative</a></li>
										<li><a href="products.jsp">Egyptian Cotton</a></li>
										<li><a href="products.jsp">Modal</a></li>
										<li><a href="products.jsp">Pima Cotton</a></li>
										<li><a href="products.jsp">Silk </a></li>
										
									</ul>	
								</div>							
							</div>
							<div class="col1">
								<div class="h_nav">
									<ul>
										<li><a href="products.jsp">Bedskirt</a></li>
										<li><a href="products.jsp">Blanket/Throw</a></li>
										<li><a href="products.jsp">Collection/Duvet</a></li>
										<li><a href="products.jsp">Comforter</a></li>
										<li><a href="products.jsp">Comforter Set</a></li>
										<li><a href="products.jsp">Decorative Pillow</a></li>
										<li><a href="products.jsp">Mattress Pad </a></li>
										<li><a href="products.jsp">Mattress Topper</a></li>
										<li><a href="products.jsp">Pillow</a></li>
										<li><a href="products.jsp">Pillow Protector</a></li>
									</ul>	
								</div>												
							</div>
						  </div>
						</div>
					</li>
				    <li class="grid"><a class="color2" href="#">BEDSPREADS</a>
					  	<div class="mepanel">
						<div class="row">
							<div class="col1">
								<div class="h_nav">
									<ul>
										<li><a href="products.jsp">Bedskirt</a></li>
										<li><a href="products.jsp">Blanket/Throw</a></li>
										<li><a href="products.jsp">Collection/Duvet</a></li>
										<li><a href="products.jsp">Comforter</a></li>
										<li><a href="products.jsp">Comforter Set</a></li>
										<li><a href="products.jsp">Decorative Pillow</a></li>
										<li><a href="products.jsp">Mattress Pad </a></li>
										<li><a href="products.jsp">Mattress Topper</a></li>
										<li><a href="products.jsp">Pillow</a></li>
										<li><a href="products.jsp">Pillow Protector</a></li>
										
									</ul>	
								</div>								
							</div>
							<div class="col1">
								<div class="h_nav">
									<ul>
										<li><a href="products.jsp">Alpaca</a></li>
										<li><a href="products.jsp">Cashmere</a></li>
										<li><a href="products.jsp">Cotton</a></li>
										<li><a href="products.jsp">Cotton Blend</a></li>
										<li><a href="products.jsp">Down</a></li>
										<li><a href="products.jsp">Down Alternative</a></li>
										<li><a href="products.jsp">Egyptian Cotton</a></li>
										<li><a href="products.jsp">Modal</a></li>
										<li><a href="products.jsp">Pima Cotton</a></li>
										<li><a href="products.jsp">Silk </a></li>
										
									</ul>		
								</div>							
							</div>
							<div class="col1">
								<div class="h_nav">
									
									<ul>
										<li><a href="products.jsp">Bedskirt</a></li>
										<li><a href="products.jsp">Blanket/Throw</a></li>
										<li><a href="products.jsp">Collection/Duvet</a></li>
										<li><a href="products.jsp">Comforter</a></li>
										<li><a href="products.jsp">Comforter Set</a></li>
										<li><a href="products.jsp">Decorative Pillow</a></li>
										<li><a href="products.jsp">Mattress Pad </a></li>
										<li><a href="products.jsp">Mattress Topper</a></li>
										<li><a href="products.jsp">Pillow</a></li>
										<li><a href="products.jsp">Pillow Protector</a></li>
									</ul>	
								</div>												
							</div>
						  </div>
						</div>
			    </li>
				<li><a href="<c:url value="login.htm">  
        							<c:param name="" value=""/>        							  
       								</c:url>"> Login</a></li>				
				<li><a class="color6" href="contact.jsp">Contact</a></li>
			  </ul> 
			</div>
				
				<div class="clearfix"> </div>
		</div>
		</div>
	</div>	
</body>
</html>