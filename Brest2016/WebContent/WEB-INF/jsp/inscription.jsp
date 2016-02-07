<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="monApp">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<title>ajout d'un visiteurt</title>
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
	        	//alert("nb clients "+data.length);
	        	$scope.erreurs = data;
	        	if (data.res == "SUCCESS") {
	     			//alert("success");
	     			$scope.mess = "Visiteur " + $scope.visiteur.nom_visiteur + " enregistré";
	     			$scope.visiteur.nom_Visiteur = "";
	     			$scope.visiteur.prenom_Visiteur = "";
	     			$scope.visiteur.email_Visiteur = "";
	     			$scope.visiteur.dateNaissance_Visiteur = "";
	     			//$scope.visiteur.code_Billet = "";
	     			//$scope.client.prenom_Visiteur = "";
	     		//$http({
	    	      //    method: 'GET',
	    	        //  url: 'listerClients.htm',
	    	          //headers: {'Content-Type': 'application/json'},
	    	     	//}).success(function (data) 
	    	        //{
	    	        	//alert("nb clients "+data.length);
	    	        	//$scope.listeClients = data;
	    	      	//});

	        	}
	          });

	};


}]);



</script>


</head>
<body>
<h1>Enregistrement d'un client</h1>

Test <input ng-model="nom_visiteur" type="text"/> {{nom_Visiteur}} !

<br />
<br />

<!-- 
$dirty	True if user has already interacted with the form.
 -->
 
<form name="form" ng-controller="ClientControl" ng-submit="inscription()" >
	<table>
		<tr>
			<td>Nom : </td>
			<td><input id="nom_visteur" name="nom_visteur" type="text" value="aaa" 
					ng-model="visiteur.nom_visteur" 
					ng-model-options="{ updateOn: 'blur' }"
			 		ng-required="true" 
			 		ng-pattern="/^[a-zA-Z]{2,}$/" /></td>
		 	<td>
		 		<div ng-show="form.nom_visteur.$dirty">
		 		   	<div ng-show="form.nom_visteur.$error.required">Veuillez saisir un nom</div>
			    </div>
		 		
      			
      			<div ng-show="form.nom_visteur.$error.pattern">Veuillez saisir au moins deux caractères</div>
     		</td>
    	</tr>
		<tr>
			<td>Prénom : </td>
			<td> <input id="prenom_visiteur" name="prenom_visiteur" value="zzz" 
					ng-model="visiteur.prenom_visiteur" 
					ng-model-options="{ updateOn: 'blur' }"
					required type="text" />
			</td>
			<td>
				<div ng-show="form.prenom_visiteur.$dirty">
      				<div ng-show="form.prenom_visiteur.$error.required">Veuillez saisir un prénom</div>
      			</div>
			</td>
		</tr>
		<tr>
			<td>Email : </td>
			<td> <input id="email_visiteur" name="email_visiteur" value="zzz@gmail.com" 
					ng-model="visiteur.email_visiteur" 
					ng-model-options="{ updateOn: 'blur' }"
					required type="text" />
			</td>
			<td>
				<div ng-show="form.email_visiteur.$dirty">
      				<div ng-show="form.email_visiteur.$error.required">Veuillez saisir votre email</div>
      			</div>
			</td>
		</tr>
		<tr>
			<td>Date de naissance : </td>
			<td> <input id="dateNaissance_visiteur" name="dateNaissance_visiteur" value="20050201" 
					ng-model="visiteur.dateNaissance_visiteur" 
					ng-model-options="{ updateOn: 'blur' }"
					required type="text" />
			</td>
			<td>
				<div ng-show="form.dateNaissance_visiteur.$dirty">
      				<div ng-show="form.dateNaissance_visiteur.$error.required">Veuillez votre date de naissance</div>
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
<li ng-show="erreurs.err['nom_visiteur']">{{erreurs.err['nom_visiteur']}}</li>
<li ng-show="erreurs.err['prenom_visiteur']">{{erreurs.err['prenom_visiteur']}}</li>
<li ng-show="erreurs.err['email_visiteur']">{{erreurs.err['email_visiteur']}}</li>
<li ng-show="erreurs.err['dateNaissance_visiteur']">{{erreurs.err['dateNaissance_visiteur']}}</li>


</ul>

</div>

<div ng-show="erreurs.res == 'SUCCESS' ">
Succès 
<br />
{{mess}}

</div>
<br />



<p>Liste des visiteurs :</p>


</form>



</body>
</html>