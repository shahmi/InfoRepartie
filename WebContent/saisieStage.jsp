<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	
	<t:genericPage>
	    	<jsp:attribute name="title">
		      <title>Saisie d'un stage</title>
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