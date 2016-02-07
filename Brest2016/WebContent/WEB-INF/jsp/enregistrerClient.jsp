<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="monApp">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<title>Enregistrement d'un client</title>
<script type="text/javascript" src="angular/angular1.4.8.min.js"></script>

<script type="text/javascript">

var monApp = angular.module("monApp", []).
controller('ClientControl', ['$scope', '$http', function ($scope, $http) {
	$scope.client = {};
	$scope.enregistrerClient = function () {
		//alert("creerClient");
	      $http({
	          method: 'POST',
	          url: 'enregistrerClient.htm',
	          headers: {'Content-Type': 'application/json'},
	          data:  $scope.client
	        }).success(function (data) 
	          {
	        	//alert("nb clients "+data.length);
	        	$scope.erreurs = data;
	        	if (data.res == "SUCCESS") {
	     			//alert("success");
	     			$scope.mess = "Client " + $scope.client.nom + " enregistré";
	     			$scope.client.nom = "";
	     			$scope.client.prenom = "";
	     			$http({
	    	          method: 'GET',
	    	          url: 'listerClients.htm',
	    	          headers: {'Content-Type': 'application/json'},
	    	     	}).success(function (data) 
	    	        {
	    	        	//alert("nb clients "+data.length);
	    	        	$scope.listeClients = data;
	    	      	});

	        	}
	          });

	};


}]);



</script>


</head>
<body>
<h1>Enregistrement d'un client</h1>

Test <input ng-model="nom" type="text"/> {{nom}} !

<br />
<br />

<!-- 
$dirty	True if user has already interacted with the form.
 -->
 
<form name="form" ng-controller="ClientControl" ng-submit="enregistrerClient()" >
	<table>
		<tr>
			<td>Nom : </td>
			<td><input id="nom" name="nom" type="text" value="aaa" 
					ng-model="client.nom" 
					ng-model-options="{ updateOn: 'blur' }"
			 		ng-required="true" 
			 		ng-pattern="/^[a-zA-Z]{2,}$/" /></td>
		 	<td>
		 		<div ng-show="form.nom.$dirty">
		 		   	<div ng-show="form.nom.$error.required">Veuillez saisir un nom</div>
			    </div>
		 		
      			
      			<div ng-show="form.nom.$error.pattern">Veuillez saisir au moins deux caractères</div>
     		</td>
    	</tr>
		<tr>
			<td>Prénom : </td>
			<td> <input id="prenom" name="prenom" value="zzz" 
					ng-model="client.prenom" 
					ng-model-options="{ updateOn: 'blur' }"
					required type="text" />
			</td>
			<td>
				<div ng-show="form.prenom.$dirty">
      				<div ng-show="form.prenom.$error.required">Veuillez saisir un prénom</div>
      			</div>
			</td>
		</tr>
		<tr>
			<td>&nbsp;</td>
			<td><button>Ajouter client</button></td>
		</tr>
	</table>

<br />

<div ng-show="erreurs.res == 'FAIL' ">
Erreurs signalées par le serveur (la validation côté client et côté serveur sont différentes pour montrer le fonctionnement):

<ul>
<li ng-show="erreurs.err['nom']">{{erreurs.err['nom']}}</li>
<li ng-show="erreurs.err['prenom']">{{erreurs.err['prenom']}}</li>
</ul>

</div>

<div ng-show="erreurs.res == 'SUCCESS' ">
Succès 
<br />
{{mess}}

</div>
<br />



<p>Liste des clients :</p>
<ul>
	<li ng-repeat="x in listeClients">{{x.nom}} {{x.prenom}}</li>
</ul>

</form>



</body>
</html>