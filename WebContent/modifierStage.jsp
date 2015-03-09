<%@ page language="java" contentType="text/html; charset=ISO-8859-1"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>Modification d'un stage </title>
		<!-- Latest compiled and minified CSS -->
		<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
		
		<link rel="stylesheet" href="css/style.css">
		
		<!-- Latest compiled and minified JavaScript -->
		<script src="bootstrap/js/bootstrap.min.js"></script>
		<script language=javascript>
		  function verif()
		  {
		  if(document.getElementById("id").value == "" || 
		     document.getElementById("libelle").value == "" || 
		     document.getElementById("datedebut").value == "" ||
		     document.getElementById("datefin").value == "")
		       { alert("Un des champs n'est pas rempli !"); 
		         return false; 
		       }
		  else
		    return true;
		  }
		  function Chargement()
		  {
		      var obj = document.getElementById("id_erreur");
		      if (obj.value!='')
		         alert('Erreur signalée  : "'+obj.value+"'");
		  }
		</script>
	</head>
	
	<body  onLoad="Chargement();">
		<h1>Formulaire de modification d'un stage</h1>
		  <br>
		  <input type ="hidden" name="uneErreur"  value="${MesErreurs}"  id ="id_erreur" >
  		
		  <form method="post" action="Controleur" onsubmit="return verif();">
		  <input type="hidden" name="type" value="ajout"  id="type"/>
		  <input type="hidden" name="action" value="ajoutStageModifie" />
		  <table>
		    <!-- input fields -->
		    <tr>
		      <td>Numéro</td>
		      <td><input type="text" name="id" value="${id}" id="id"/></td>
		    </tr>
		    <tr>
		      <td>Libellé</td>
		      <td><input type="text" name="libelle" value="${libelle}" id="libelle"/></td>
		    </tr>
		    <tr>
		    <td>Date de début du stage</td>
		     <td><input type="text" name="datedebut" value="${dateDebut}" id="datedebut"/></td>
		     </tr>
		      <tr>
		      <td>Date de fin de stage</td>
		     <td><input type="text" name="datefin" value="${dateFin}" id="datefin"/></td>
		    </tr>
		    
		    <tr>
		      <td>Nombre de places </td>
		      <td><input type="text" name="nbplaces" value="${nbPlaces}" id="nbplaces"/></td>
		    </tr>
		    <tr>
		      <td>Nombre d'inscrits </td>
		      <td><input type="text" name="nbinscrits" value="${nbInscrits}" id="nbinscrits"/></td>
		    </tr>
		    <!-- Boutons Ajouter/Reset -->
		    <tr>
		      <td colspan="2">
		        <input type="submit" class="btn btn-primary" name="ajouter" value="Modifier"/>
		      </td>
		    </tr>
		  </table>
		  </form>
		  &nbsp;&nbsp;
		  <form class="form-inline" action="Controleur" method="get">
	  			<div class="form-group">
	  				<input name="action" value="supprimerStage" type="text" hidden="true">
	  				<input name="idStage" value="${id}" type="text" hidden="true">
				   <button type="submit" class="btn btn-danger">Supprimer</button>
				</div>
			</form>
	</body>
</html>
