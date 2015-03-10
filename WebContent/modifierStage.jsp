<%@ page language="java" contentType="text/html; charset=ISO-8859-1"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<t:genericPage>
	    	<jsp:attribute name="title">
		      <title>Accueil</title>
		    </jsp:attribute>
		    <jsp:body>
				<h1 class="center">Formulaire d'ajout d'un stage</h1>
		  <br>
		  <input type ="hidden" name="uneErreur"  value="${MesErreurs}"  id ="id_erreur" >
		  
		  <form class="form-horizontal" method="post" action="Controleur">
		  
			  <input type="hidden" name="type" value="ajout"  id="type"/>
			  <input type="hidden" name="action" value="ajoutStage" />
				  <div class="form-group col-sm-12">
		    		<label for="numero" class="col-sm-2 control-label">Numéro</label>
		    		<div class="col-sm-7">
		    			<input type="text" name="id" class="form-control" id="numero" placeholder="Enter un numéro..." required>
		    		</div>
		  		  </div>
		  		  <div class="form-group col-sm-12">
		    		<label for="libelle" class="col-sm-2 control-label">Libellé</label>
		    		<div class="col-sm-7">
		    			<input type="text" name="libelle" class="form-control" id="libelle" placeholder="Enter un libellé..." required>
		    		</div>
		  		  </div>
		  		  <div class="form-group col-sm-12">
		    		<label for="datedebut" class="col-sm-2 control-label">Date de début de stage</label>
		    		<div class="col-sm-7">
		    			<input type="text" name="datedebut" class="form-control" id="datedebut" placeholder="Enter la date de début de stage..." required>
		    		</div>
		  		  </div>
		  		  <div class="form-group col-sm-12">
		    		<label for="datefin" class="col-sm-2 control-label">Date de fin de stage</label>
		    		<div class="col-sm-7">
		    			<input type="text"  name="datefin" class="form-control" id="datefin" placeholder="Enter la date de fin de stage..." required>
		    		</div>
		  		  </div>
		  		  <div class="form-group col-sm-12">
		    		<label for="nbplaces" class="col-sm-2 control-label">Nombre de places</label>
		    		<div class="col-sm-7">
		    			<input type="text" name="nbplaces" class="form-control" id="nbplaces" placeholder="Enter le nombre de places..." required>
		    		</div>
		  		  </div>
		  		  <div class="form-group col-sm-12">
		    		<label for="nbinscrits" class="col-sm-2 control-label">Nombre d'inscrits</label>
		    		<div class="col-sm-7">
		    			<input type="text" name="nbinscrits" class="form-control" id="nbinscrits" placeholder="Enter la nombre d'inscrits..." required>
		    		</div>
				  </div>
				  <div class="form-group col-sm-12">
				    <div class="col-sm-offset-2 col-sm-9">
				      <button type="submit" class="btn btn-primary">Ajouter</button>
				      <button type="reset" name="reset" class="btn btn-default">Reset</button>
				    </div>
				  </div> 
		  </form>
    		</jsp:body>
	</t:genericPage>


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
