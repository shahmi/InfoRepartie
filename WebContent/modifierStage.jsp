<%@ page language="java" contentType="text/html; charset=ISO-8859-1"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<t:genericPage>
	    	<jsp:attribute name="title">
		      <title>Modification d'un stage</title>
		    </jsp:attribute>
		    <jsp:body>
				<h1 class="center">Formulaire de modification d'un stage</h1>
		  <br>
		  <input type ="hidden" name="uneErreur"  value="${MesErreurs}"  id ="id_erreur" >
		  
		  <form class="form-horizontal" method="post" action="Controleur">
		  
			  <input type="hidden" name="type" value="ajout"  id="type"/>
			  <input type="hidden" name="action" value="ajoutStageModifie" />
				  <div class="form-group col-sm-12">
		    		<label for="numero" class="col-sm-2 control-label">Num�ro</label>
		    		<div class="col-sm-7">
		    			<input type="text" name="id" class="form-control" value="${id}" id="numero" placeholder="Enter un num�ro..." required>
		    		</div>
		  		  </div>
		  		  <div class="form-group col-sm-12">
		    		<label for="libelle" class="col-sm-2 control-label">Libell�</label>
		    		<div class="col-sm-7">
		    			<input type="text" name="libelle" class="form-control" value="${libelle}" id="libelle" placeholder="Enter un libell�..." required>
		    		</div>
		  		  </div>
		  		  <div class="form-group col-sm-12">
		    		<label for="datedebut" class="col-sm-2 control-label">Date de d�but de stage</label>
		    		<div class="col-sm-7">
		    			<input type="text" name="datedebut" class="form-control" value="${dateDebut}" id="datedebut" placeholder="Enter la date de d�but de stage..." required>
		    		</div>
		  		  </div>
		  		  <div class="form-group col-sm-12">
		    		<label for="datefin" class="col-sm-2 control-label">Date de fin de stage</label>
		    		<div class="col-sm-7">
		    			<input type="text"  name="datefin" class="form-control" value="${dateFin}" id="datefin" placeholder="Enter la date de fin de stage..." required>
		    		</div>
		  		  </div>
		  		  <div class="form-group col-sm-12">
		    		<label for="nbplaces" class="col-sm-2 control-label">Nombre de places</label>
		    		<div class="col-sm-7">
		    			<input type="text" name="nbplaces" class="form-control" value="${nbPlaces}" id="nbplaces" placeholder="Enter le nombre de places..." required>
		    		</div>
		  		  </div>
		  		  <div class="form-group col-sm-12">
		    		<label for="nbinscrits" class="col-sm-2 control-label">Nombre d'inscrits</label>
		    		<div class="col-sm-7">
		    			<input type="text" name="nbinscrits" class="form-control" value="${nbInscrits}" id="nbinscrits" placeholder="Enter la nombre d'inscrits..." required>
		    		</div>
				  </div>
				  <div class="form-group col-sm-12">
				    <div class="col-sm-offset-2 col-sm-9">
				      <button type="submit" class="btn btn-primary">Mettre � jour</button>
				    </div>
				  </div> 
		  </form>
    		</jsp:body>
	</t:genericPage>
