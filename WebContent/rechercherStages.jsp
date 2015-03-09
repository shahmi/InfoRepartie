<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Affichage de tous les stages e</title>
		<!-- Latest compiled and minified CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
		<!-- Latest compiled and minified JavaScript -->
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	</head>

	<body>
	<h1>Rechercher un stage :</h1>
	<c:choose>
	      <c:when test="${fn:length(liste) == 0}">
	      		<p> Aucun stage ne correspond à votre recherche ! <p>
	      </c:when>
	
	      <c:otherwise>
	      		<TABLE BORDER="1">
				  <CAPTION> Tableau des Stages </CAPTION>
				  <TR>
				 <TH> Numero </TH>
				 <TH> Libellé  </TH>
				 <TH> Date début  </TH>
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
				     
				  </tr>
				 </c:forEach>
				</TABLE>
	      </c:otherwise>
	</c:choose>
	
	
	
	</body>
</html>
