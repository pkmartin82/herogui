<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Create a new Hero - Success!</title>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="<c:url value="/resources/js/main.js" />"></script>
<link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">
</head>
<body>
	<div id="createherosuccess_div">
		<table>
			<tr>
				<td colspan="2"><h2>Hero Creation Succeeded!</h2></td>
			</tr>
			<tr>
				<td colspan="2">
					<h3>The newly created Hero is ready!</h3>
				</td>
			</tr>
			<tr>
				<td>Hero ID:</td>
				<td>${createHeroForm.heroId}</td>
			</tr>
			<tr>
				<td>Hero Name:</td>
				<td>${createHeroForm.heroName}</td>
			</tr>
			<tr>
				<td>Secret Identity:</td>
				<td>${createHeroForm.secretIdentity}</td>
			</tr>
			<tr>
				<td>Number of others who know secret identity:</td>
				<td>${createHeroForm.numOthersWhoKnowSecret}</td>
			</tr>
			<tr>
				<td>Catchphrase:</td>
				<td>${createHeroForm.catchphrase}</td>
			</tr>
			<tr>
				<td>Universe Id:</td>
				<td>${createHeroForm.universeId}</td>
			</tr>
		</table>
	</div>
</body>
</html>