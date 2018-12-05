<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>gestion des Adresses</title>
</head>
<body>
	<div id="formAdresse" class="cadre">

		<f:form modelAttribute="adresse" action="saveAdresse" method="post">
		<f:errors/>
			<table>
				<tr>
					<td>Numéro de rue</td>
					<td><f:input path="numRue" /></td>
					<td><f:errors path="numRue"></f:errors></td>
				</tr>
				<tr>
					<td>Code Postal</td>
					<td><f:input path="codePostal" /></td>
					<td><f:errors path="codePostal"></f:errors></td>
				</tr>
				<tr>
					<td>Ville</td>
					<td><f:input path="ville" /></td>
					<td><f:errors path="ville"></f:errors></td>
				</tr>
				<tr>
					<td><input type="submit" value="Save"></td>
				</tr>
			</table>
		</f:form>
	</div>
	<div id="tabAdresse" class="cadre">
		<table class="tabStyle1">
			<tr>
				<th>ID</th>
				<th>Numéro de rue</th>
				<th>Code Postal</th>
				<th>Ville</th>
				<th>SUPPR</th>
				<th>MAJ</th>
			</tr>
			<c:forEach items="${adresses}" var="a">
				<tr>
					<td>${a.id}</td>
					<td>${a.codePostal}</td>
					<td>${a.numRue}</td>
					<td>${a.ville}</td>
					<td><a href="supprAdresse?idAdresse=${a.id}">Supprimer</a></td>
					<td><a href="editAdresse?idAdresse=${a.id}">Edit</a></td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>