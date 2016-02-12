<!--A Design by W3layouts 
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html ng-app="monApp">
<head>
<title>Mattress A Ecommerce Category Flat Bootstrap Responsive Website Template | Register :: w3layouts</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />	
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Mattress Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--fonts-->
<link href='//fonts.googleapis.com/css?family=Lato:100,300,400,700,900' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900' rel='stylesheet' type='text/css'><!--//fonts-->
<!-- start menu -->
<link href="css/memenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/memenu.js"></script>
<script>$(document).ready(function(){$(".memenu").memenu();});</script>
<script src="js/simpleCart.min.js"> </script>

<script type="text/javascript" src="angular/angular1.4.8.min.js"></script>
<script type="text/javascript">

var monApp = angular.module("monApp", []).
controller('ClientControl', ['$scope', '$http', function ($scope, $http) {
	$scope.visiteur = {};
	$scope.inscription = function () {
		//alert("creerClient");
	      $http({
	          method: 'POST',
	          url: 'register.htm',
	          headers: {'Content-Type': 'application/json'},
	          data:  $scope.visiteur
	        }).success(function (data) 
	          {
	        	//alert("nb visiteurs "+data.length);
	        	$scope.erreurs = data;
	        	if (data.res == "SUCCESS") {
	     			//alert("success");
	     			$scope.mess = "Visiteur " + $scope.visiteur.visit_nom + " enregistré";
	     			$scope.visiteur.visit_nom = "";
	     			$scope.visiteur.visit_prenom = "";
	     			$scope.visiteur.visit_email = "";
	     			$scope.visiteur.visit_date_naissance = "";
	     			$scope.visiteur.visit_password = "";
	     			$http({
		    	          method: 'GET',
		    	          url: 'listerVisiteurs.htm',
		    	          headers: {'Content-Type': 'application/json'},
		    	     	}).success(function (data) 
		    	        {
		    	        	//alert("nb clients "+data.length);
		    	        	$scope.listeVisteurs = data;
		    	      	});
	        	}
	          });
	};

}]);



</script>
</head>
<body>
<!--header-->
<jsp:include page="menu.jsp" />
	<!-- grow -->
	<div class="grow">
		<div class="container">
			<h2>Register</h2>
		</div>
	</div>
	<!-- grow -->
<!--content-->
<div class=" container">
<div class=" register">
	
		  	  <form name="form" ng-controller="ClientControl" ng-submit="inscription()"> 
				 <div class="col-md-6 register-top-grid">
					<h3>Information personnelle</h3>
					 <div>
						<span>Nom</span>
						<input id="visit_nom" name="visit_nom" type="text" value="adfdfaa" 
							   ng-model="visiteur.visit_nom" 
							   ng-model-options="{ updateOn: 'blur' }"
			 		           ng-required="true" 
			 		           ng-pattern="/^[a-zA-Z]{2,}$/" /> 
			 		   <div ng-show="form.visit_nom.$dirty">
		 		   	   <div ng-show="form.visit_nom.$error.required">Veuillez saisir un nom</div>
			    	   </div>
     			       <div ng-show="form.visit_nom.$error.pattern">Veuillez saisir au moins deux caractères</div>
					  </div>
					   
					 <div>
						<span>Prenom</span>
						<input id="visit_prenom" name="visit_prenom" value="zzssdz" 
							ng-model="visiteur.visit_prenom" 
							ng-model-options="{ updateOn: 'blur' }"
							required type="text" /> 
							
							<div ng-show="form.visit_prenom.$dirty">
      						<div ng-show="form.visit_prenom.$error.required">Veuillez saisir un prénom</div>
      						</div>
					 </div>
					 
					 
					 <div>
						<span>Date de naissance</span>
						<input id="visit_date_naissance" name="visit_date_naissance" value="20050201" 
							ng-model="visiteur.visit_date_naissance" 
							ng-model-options="{ updateOn: 'blur' }"
							required type="text" /> 
							
							<div ng-show="form.visit_date_naissance.$dirty">
      						<div ng-show="form.visit_date_naissance.$error.required">Veuillez votre date de naissance</div>
      						</div>
					 </div>
					 
					 
					 <div>
						 <span> Adresse mail</span>
						 <input id="visit_email" name="visit_email" value="zzz@gmail.com" 
							ng-model="visiteur.visit_email" 
							ng-model-options="{ updateOn: 'blur' }"
							required type="text" /> 
							
							<div ng-show="form.visit_email.$dirty">
      						<div ng-show="form.visit_email.$error.required">Veuillez saisir votre email</div>
      						</div>
					 </div>
					 
					 
					   <a class="news-letter" href="#">
						 <label class="checkbox"><input type="checkbox" checked=""><i> </i>Sign Up for Newsletter</label>
					   </a>
					 </div>
				     <div class="col-md-6 register-bottom-grid">
						    <h3>Information d'authentification</h3>
							 <div>
								<span>Password</span>
								<input  id="visit_password" name="visit_password" value="20050201" 
									ng-model="visiteur.visit_password" 
									ng-model-options="{ updateOn: 'blur' }"
									required type="password" />
							 </div>
							 <div>
								<span>Confirm Password</span>
								<input type="password">
							 </div>
							 <button>Ajouter visiteur</button>
							
					 </div>
					 <div class="clearfix"> </div>
				</form>
			</div>
</div>
<!--//content-->
<div class="footer">
				<div class="container">
			<div class="footer-top-at">
			
				<div class="col-md-3 amet-sed">
				<h4>MORE INFO</h4>
				<ul class="nav-bottom">
						<li><a href="#">How to order</a></li>
						<li><a href="#">FAQ</a></li>
						<li><a href="contact.jsp">Location</a></li>
						<li><a href="#">Shipping</a></li>
						<li><a href="#">Membership</a></li>	
					</ul>	
				</div>
				<div class="col-md-3 amet-sed">
					<h4>CATEGORIES</h4>
					<ul class="nav-bottom">
						<li><a href="#">Bed linen</a></li>
						<li><a href="#">Cushions</a></li>
						<li><a href="#">Duvets</a></li>
						<li><a href="#">Pillows</a></li>
						<li><a href="#">Protectors</a></li>	
					</ul>
					
				</div>
				<div class="col-md-3 amet-sed">
					<h4>NEWSLETTER</h4>
					<div class="stay">
						<div class="stay-left">
							<form>
								<input type="text" placeholder="Enter your email " required="">
							</form>
						</div>
						<div class="btn-1">
							<form>
								<input type="submit" value="Subscribe">
							</form>
						</div>
							<div class="clearfix"> </div>
			</div>
					
				</div>
				<div class="col-md-3 amet-sed ">
				<h4>CONTACT US</h4>
					<p>Contrary to popular belief</p>
					<p>The standard chunk</p>
					<p>office :  +12 34 995 0792</p>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
		<div class="footer-class">
		<p>Â© 2015 Mattress . All Rights Reserved | Design by  <a href="http://w3layouts.com/" target="_blank">W3layouts</a> </p>
		</div>
		</div>
</body>
</html>
			