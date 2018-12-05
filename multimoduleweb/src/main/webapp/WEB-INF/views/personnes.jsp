<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>gestion des personnes</title>
</head>
<body>
	<div id="formPers" class="cadre">
		<!-- dans modelAttribute on mets le modéle initié dans le contrôleur
	et dans le construction du formulaire l'attribut path contient
	à chaque fois un attribut du modèle
	personne.id, personne.nom, personne.prenom et personne.age -->
		<f:form modelAttribute="personne" action="savePers" method="post">
		<f:errors/>
			<table>
				<tr>
					<td>ID:</td>
					<td><f:input type="hidden" path="id" /></td>
					<td><f:errors path="id"></f:errors></td>
				</tr>
				<tr>
					<td>Nom</td>
					<td><f:input path="nom" /></td>
					<td><f:errors path="nom"></f:errors></td>
				</tr>
				<tr>
					<td>Prenom</td>
					<td><f:input path="prenom" /></td>
					<td><f:errors path="prenom"></f:errors></td>
				</tr>
				<tr>
					<td>Age</td>
					<td><f:input path="age" /></td>
					<td><f:errors path="age"></f:errors></td>
				</tr>
				<tr>
					<td><input type="submit" value="Save"></td>
				</tr>
			</table>
		</f:form>
	</div>
	<div id="tabPersonnes" class="cadre">
		<table class="tabStyle1">
			<tr>
				<th>ID</th>
				<th>NOM</th>
				<th>PRENOM</th>
				<th>AGE</th>
				<th>SUPPR</th>
				<th>MAJ</th>
			</tr>
			<c:forEach items="${personnes}" var="p">
				<tr>
					<td>${p.id}</td>
					<td>${p.nom}</td>
					<td>${p.prenom}</td>
					<td>${p.age}</td>
					<td><a href="supprPers?idPers=${p.id}">Supprimer</a></td>
					<td><a href="editPers?idPers=${p.id}">Edit</a></td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>