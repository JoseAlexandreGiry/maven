<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div>
	<f:form modelAttribute="voiture" action="saveVoit" method="post">
		<table>
			<tr>
				<td>ID:</td>
				<td><f:input type="hidden" path="idVoiture" /></td>
				<td><f:errors path="idVoiture"></f:errors></td>
			</tr>
			<tr>
				<td>Marque</td>
				<td><f:input path="marque" /></td>
				<td><f:errors path="marque"></f:errors></td>
			</tr>
			<tr>
				<td>Constructeur</td>
				<td><f:input path="constructeur" /></td>
				<td><f:errors path="constructeur"></f:errors></td>
			</tr>
			<tr>
				<td>Propriétaire</td>
				<td><f:select path="personne.id" items="${personnes}" 
				itemValue="id" itemLabel="nom"></f:select>
				</td>
				<td><f:errors path="personne"></f:errors></td>
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
				<th>MARQUE</th>
				<th>CONSTRUCTEUR</th>
				<th>PROPRIETAIRE</th>
				<th>SUPPR</th>
				<th>MAJ</th>
			</tr>
			<c:forEach items="${voitures}" var="v">
				<tr>
					<td>${v.idVoiture}</td>
					<td>${v.marque}</td>
					<td>${v.constructeur}</td>
					<td>${v.personne.nom}</td>
					<td><a href="supprVoit?idVoit=${v.idVoiture}">Supprimer</a></td>
					<td><a href="editVoit?idVoit=${v.idVoiture}">Edit</a></td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>

</html>