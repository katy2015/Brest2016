<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="monApp">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<title> Ajout d'une reservation</title>
<script type="text/javascript" src="angular/angular1.4.8.min.js"></script>
<script type="text/javascript">

var monApp = angular.module("monApp", []).
controller('ClientControl', ['$scope', '$http', function ($scope, $http) {
	$scope.reservation = {};
	$scope.reservation = function () {
		//alert("creerClient");
	      $http({
	          method: 'POST',
	          url:'reservation.htm',
	          headers: {'Content-Type': 'application/json'},
	          data:  $scope.reservation
	        }).success(function (data) 
	          {
	        	//alert("nb visiteurs "+data.length);
	        	$scope.erreurs = data;
	        	if (data.res == "SUCCESS") {
	     			//alert("success");
	     			$scope.mess = "reservation " + $scope.reservation.reservation_nom + " enregistré";
	     			$scope.reservation.reservation_nom = "";
	     			/*$http({
		    	          method: 'GET',
		    	          url: 'listerVisiteurs.htm',
		    	          headers: {'Content-Type': 'application/json'},
		    	     	}).success(function (data) 
		    	        {
		    	        	//alert("nb clients "+data.length);
		    	        	$scope.listeVisteurs = data;
		    	      	})*/;

	        	}
	          });

	};


}]);



</script>


</head>
<body>
<h1>Enregistrement d'une réservation</h1>

Test <input ng-model="reservation_nom" type="text"/> {{reservation_nom}} !

<br />
<br />

<!-- 
$dirty	True if user has already interacted with the form.
 -->
 
<form name="form" ng-controller="ClientControl" ng-submit="reservation()" >
	<table>
		<tr>
			<td>Nom : </td>
			<td><input id="reservation_nom" name="reservation_nom" type="text" value="adfdfaa" 
					ng-model="reservation.reservation_nom" 
					ng-model-options="{ updateOn: 'blur' }"
			 		ng-required="true" 
			 		ng-pattern="/^[a-zA-Z]{2,}$/" /></td>
		 	<td>
		 		<div ng-show="form.reservation_nom.$dirty">
		 		   	<div ng-show="form.reservation_nom.$error.required">Veuillez saisir un nom</div>
			    </div>
		 		
      			
      			<div ng-show="form.reservation_nom.$error.pattern">Veuillez saisir au moins deux caractères</div>
     		</td>
    	</tr>
		
		
		<tr>
			<td>&nbsp;</td>
			<td><button>Ajouter une réservation</button></td>
		</tr>
	</table>

<br />

<div ng-show="erreurs.res == 'FAIL' ">
Erreurs signalées par le serveur (la validation côté client et côté serveur sont différentes pour montrer le fonctionnement):

<ul>
<li ng-show="erreurs.err['reservation_nom']">{{erreurs.err['reservation_nom']}}</li>



</ul>

</div>

<div ng-show="erreurs.res == 'SUCCESS' ">
Succès 
<br />
{{mess}}

</div>
<br />

</form>



</body>
</html>