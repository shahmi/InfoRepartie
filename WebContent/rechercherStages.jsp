<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<t:genericPage>
	    	<jsp:attribute name="title">
		      <title>Affichage des stages</title>
		    </jsp:attribute>
		    <jsp:body>
			    <div class="container">
			    	<div class="row">
			        	<div class="col-md-12">
			        
			        <h1 class="center">R�sultat de votre recherche de stage :</h1>
			        <br>
			        <br>
					<c:choose>
					      <c:when test="${fn:length(liste) == 0}">
					      		<p class="center"> Aucun stage ne correspond � votre recherche ! <p>
					      </c:when>
					
					      <c:otherwise>
			        	
						    	<TABLE class="table table-hover">
								  <TR>
								 <TH> Numero </TH>
								 <TH> Libell�  </TH>
								 <TH> Date d�but  </TH>
								 <TH> Date fin </TH>
								 <TH> Nombre de places </TH>
								 <TH> Nombre d'inscrits </TH>
								 </TR>
								 
								 <c:forEach  items="${liste}"  var="item" >
								  <tr>
								     <td>${item.id}</td>
								     <td>${item.libelle}</td>
								      <td>
								      <fmt:formatDate type="both" dateStyle="short"
								          timeStyle="short" value="${item.datedebut}" pattern="dd/MM/yyyy"/>
								      </td>
								       <td>
								       <fmt:formatDate type="both" dateStyle="short"
								          timeStyle="short" value="${item.datefin}" pattern="dd/MM/yyyy" />
								      </td>
								       
								      <td>${item.nbplaces}</td>
									  <td>${item.nbinscrits}</td>
									  <td>
									  	<form class="form-inline" action="Controleur" method="get">
								  			<div class="form-group">
								  				<input name="action" value="modifierStage" type="text" hidden="true">
								  				<input name="nomStage" value="${item.libelle}" type="text" hidden="true">
											   <button type="submit" class="btn btn-primary">Modifier</button>
											</div>
										</form>
									</td> 
									<td>
									  	<form class="form-inline" action="Controleur" method="get">
								  			<div class="form-group">
								  				<input name="action" value="supprimerStage" type="text" hidden="true">
								  				<input name="idStage" value="${item.id}" type="text" hidden="true">
											   <button type="submit" class="btn btn-danger">Supprimer</button>
											</div>
										</form>
									</td> 
								  </tr>
								 </c:forEach>
					 	      </c:otherwise>
						</c:choose>
					</TABLE>
					</div>
					</div>
			    </div>
    		</jsp:body>
	</t:genericPage>
