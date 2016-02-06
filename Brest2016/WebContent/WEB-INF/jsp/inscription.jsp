<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="monApp">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<title>Enregistrement d'un client</title>
<script type="text/javascript" src="angular/angular1.3.14.min.js"></script>

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
	     			$scope.client.prenom_Visiteur = "";
	     			$scope.visiteur.email_Visiteur = "";
	     			$scope.client.dateNaissance_Visiteur = "";
	     			$scope.visiteur.code_Billet = "";
	     			$scope.client.prenom_Visiteur = "";
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

Test <input ng-model="nom_Visiteur" type="text"/> {{nom_Visiteur}} !

<br />
<br />

<!-- 
$dirty	True if user has already interacted with the form.
 -->
 
<form name="form" ng-controller="ClientControl" ng-submit="inscription()" >
	<table>
		<tr>
			<td>Nom : </td>
			<td><input id="Nom_Visteur" name="Nom_Visteur" type="text" value="aaa" 
					ng-model="visiteur.Nom_Visteur" 
					ng-model-options="{ updateOn: 'blur' }"
			 		ng-required="true" 
			 		ng-pattern="/^[a-zA-Z]{2,}$/" /></td>
		 	<td>
		 		<div ng-show="form.Nom_Visteur.$dirty">
		 		   	<div ng-show="form.Nom_Visteur.$error.required">Veuillez saisir un nom</div>
			    </div>
		 		
      			
      			<div ng-show="form.Nom_Visteur.$error.pattern">Veuillez saisir au moins deux caractères</div>
     		</td>
    	</tr>
		<tr>
			<td>Prénom : </td>
			<td> <input id="Prenom_Visiteur" name="Prenom_Visiteur" value="zzz" 
					ng-model="visiteur.Prenom_Visiteur" 
					ng-model-options="{ updateOn: 'blur' }"
					required type="text" />
			</td>
			<td>
				<div ng-show="form.Prenom_Visiteur.$dirty">
      				<div ng-show="form.Prenom_Visiteur.$error.required">Veuillez saisir un prénom</div>
      			</div>
			</td>
		</tr>
		<tr>
			<td>Email : </td>
			<td> <input id="Email_Visiteur" name="Email_Visiteur" value="zzz@gmail.com" 
					ng-model="visiteur.Email_Visiteur" 
					ng-model-options="{ updateOn: 'blur' }"
					required type="text" />
			</td>
			<td>
				<div ng-show="form.Email_Visiteur.$dirty">
      				<div ng-show="form.Email_Visiteur.$error.required">Veuillez saisir votre email</div>
      			</div>
			</td>
		</tr>
		<tr>
			<td>Date de naissance : </td>
			<td> <input id="DateNaissance_Visiteur" name="DateNaissance_Visiteur" value="zzz" 
					ng-model="visiteur.Prenom_Visiteur" 
					ng-model-options="{ updateOn: 'blur' }"
					required type="text" />
			</td>
			<td>
				<div ng-show="form.DateNaissance_Visiteur.$dirty">
      				<div ng-show="form.DateNaissance_Visiteur.$error.required">Veuillez votre date de naissance</div>
      			</div>
			</td>
		</tr>
		<tr>
			<td>Code billet : </td>
			<td> <input id="Code_Billet" name="Code_Billet" value="zzz" 
					ng-model="visiteur.Code_Billet" 
					ng-model-options="{ updateOn: 'blur' }"
					required type="text" />
			</td>
			<td>
				<div ng-show="form.Code_Billet.$dirty">
      				<div ng-show="form.Code_Billet.$error.required">Veuillez saisir un code billet</div>
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
<li ng-show="erreurs.err['Nom_Visiteur']">{{erreurs.err['Nom_Visiteur']}}</li>
<li ng-show="erreurs.err['Prenom_Visiteur']">{{erreurs.err['Prenom_Visiteur']}}</li>
<li ng-show="erreurs.err['Email_Visiteur']">{{erreurs.err['Email_Visiteur']}}</li>
<li ng-show="erreurs.err['DateNaissance_Visiteur']">{{erreurs.err['DateNaissance_Visiteur']}}</li>

<li ng-show="erreurs.err['Code_Billet']">{{erreurs.err['Code_Billet']}}</li>
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