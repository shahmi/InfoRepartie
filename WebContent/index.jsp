<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.util.Date,java.text.*"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	
	<t:genericPage>
	    	<jsp:attribute name="title">
		      <title>Accueil</title>
		    </jsp:attribute>
		    <jsp:body>
		        <div class="banner">
			      <div class="container">
			        <h2 class="textBanner">Bienvenue sur l'application de gestion de stage HIGH TECH.</h2>
			      </div>
			    </div>
			    <div class="container">
			      <div class="row">
			        <div class="col-md-6">
			          <h2>Saisie d'un stage</h2>
			          <p>Cette partie vous permet de saisir de nouveaux stages !</p>
			          <p><a class="btn btn-default" href="Controleur?action=saisieStage" role="button">Entrer &raquo;</a></p>
			        </div>
			        <div class="col-md-6">
			          <h2>Afficher la liste de stage</h2>
			          <p>Cette partie vous permet d'une part de visualiser les stages existants et d'autre part de les modifier ou de les supprimer</p>
			          <p><a class="btn btn-default" href="Controleur?action=afficheStage" role="button">Entrer &raquo;</a></p>
			       </div>
			        <div class="col-md-12">
			          <h2>Rechercher un stage</h2>
			          <p>Cette partie vous permet de rechercher un stage en particulier.</p>
			          <form class="form-inline" action="Controleur" method="get">
			  			<div class="form-group">
			  				<input name="action" value="rechercheStage" type="text" hidden="true">
						    <input name="nomStage" type="text" class="form-control" placeholder="Entrer le nom du stage ..." required>
						   <button type="submit" class="btn btn-default">Rechercher !</button>
						</div>
					  </form>
			        </div>
			      </div>
    		</jsp:body>
	</t:genericPage>
	