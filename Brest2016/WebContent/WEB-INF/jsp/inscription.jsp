<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="monApp">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<title>ajout d'un visiteurt</title>
<jsp:include page="../../menuFirst.jsp" />
<div style="clear:both"></div>
<script type="text/javascript" src="angular/angular1.4.8.min.js"></script>
<script type="text/javascript">

var monApp = angular.module("monApp", []).
controller('ClientControl', ['$scope', '$http', function ($scope, $http) {
	$scope.visiteur = {};
	$scope.inscription = function () {
		//alert("creerClient");
	      $http({
	          method: 'POST',
	          url: 'inscription.htm',
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
<h1>Enregistrement d'un client</h1>

Test <input ng-model="visit_nom" type="text"/> {{visit_nom}} !

<br />
<br />

<!-- 
$dirty	True if user has already interacted with the form.
 -->
 
<form name="form" ng-controller="ClientControl" ng-submit="inscription()" >
	<table>
		<tr>
			<td>Nom : </td>
			<td><input id="visit_nom" name="visit_nom" type="text" value="adfdfaa" 
					ng-model="visiteur.visit_nom" 
					ng-model-options="{ updateOn: 'blur' }"
			 		ng-required="true" 
			 		ng-pattern="/^[a-zA-Z]{2,}$/" /></td>
		 	<td>
		 		<div ng-show="form.visit_nom.$dirty">
		 		   	<div ng-show="form.visit_nom.$error.required">Veuillez saisir un nom</div>
			    </div>
		 		
      			
      			<div ng-show="form.visit_nom.$error.pattern">Veuillez saisir au moins deux caractères</div>
     		</td>
    	</tr>
		<tr>
			<td>Prénom : </td>
			<td> <input id="visit_prenom" name="visit_prenom" value="zzssdz" 
					ng-model="visiteur.visit_prenom" 
					ng-model-options="{ updateOn: 'blur' }"
					required type="text" />
			</td>
			<td>
				<div ng-show="form.visit_prenom.$dirty">
      				<div ng-show="form.visit_prenom.$error.required">Veuillez saisir un prénom</div>
      			</div>
			</td>
		</tr>
		<tr>
			<td>Email : </td>
			<td> <input id="visit_email" name="visit_email" value="zzz@gmail.com" 
					ng-model="visiteur.visit_email" 
					ng-model-options="{ updateOn: 'blur' }"
					required type="text" />
			</td>
			<td>
				<div ng-show="form.visit_email.$dirty">
      				<div ng-show="form.visit_email.$error.required">Veuillez saisir votre email</div>
      			</div>
			</td>
		</tr>
		<tr>
			<td>Date de naissance : </td>
			<td> <input id="visit_date_naissance" name="visit_date_naissance" value="20050201" 
					ng-model="visiteur.visit_date_naissance" 
					ng-model-options="{ updateOn: 'blur' }"
					required type="text" />
			</td>
			<td>
				<div ng-show="form.visit_date_naissance.$dirty">
      				<div ng-show="form.visit_date_naissance.$error.required">Veuillez votre date de naissance</div>
      			</div>
			</td>
		</tr>
		
		<tr>
		
		<tr>
			<td>Mot de passe : </td>
			<td> <input id="visit_password" name="visit_password" value="20050201" 
					ng-model="visiteur.visit_password" 
					ng-model-options="{ updateOn: 'blur' }"
					required type="password" />
			</td>
			<td>
				<div ng-show="form.visit_password.$dirty">
      				<div ng-show="form.vvisit_password.$error.required">Veuillez votre mot de passe</div>
      			</div>
			</td>
		</tr>
		
		<tr>
			<td>&nbsp;</td>
			<td><button>Ajouter visiteur</button></td>
		</tr>
	</table>

<br />

<div ng-show="erreurs.res == 'FAIL' ">
Erreurs signalées par le serveur (la validation côté client et côté serveur sont différentes pour montrer le fonctionnement):

<ul>
<li ng-show="erreurs.err['visit_nom']">{{erreurs.err['visit_nom']}}</li>
<li ng-show="erreurs.err['visit_prenom']">{{erreurs.err['visit_prenom']}}</li>
<li ng-show="erreurs.err['visit_email']">{{erreurs.err['visit_email']}}</li>
<li ng-show="erreurs.err['visit_date_naissance']">{{erreurs.err['visit_date_naissance']}}</li>
<li ng-show="erreurs.err['visit_password']">{{erreurs.err['visit_password']}}</li>


</ul>

</div>

<div ng-show="erreurs.res == 'SUCCESS' ">
Succès 
<br />
{{mess}}

</div>
<br />



<p>Liste des visiteurs :</p>

<ul>
	<li ng-repeat="x in listeVisteurs">{{x.visit_nom}} {{x.visit_prenom}}</li>
</ul>
</form>



</body>
</html>