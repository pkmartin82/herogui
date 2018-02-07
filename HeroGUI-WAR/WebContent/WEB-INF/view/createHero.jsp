<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Create a new Hero!</title>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="<c:url value="/resources/js/main.js" />"></script>
<script src="<c:url value="/resources/js/spinner.js" />"></script>
<link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/spinner.css" />"
	rel="stylesheet">
<!-- First attempt at a spinner -->
<!-- 
<link href="http://css-spinners.com/css/spinner/dots.css"
rel="stylesheet" type="text/css">
-->
</head>
<body>
	<div id="loading">
		<div id="loadingcontent">
			<p id="loadingspinner">Please wait...</p>
		</div>
	</div>
	<div id="createhero_formdiv">
		<form:form action="create" method="post" commandName="createHeroForm">
			<table>
				<tr>
					<td colspan="2"><h2>Create a Hero!</h2></td>
				</tr>
				<tr>
					<td>Hero Name:</td>
					<td><form:input path="heroName" /></td>
				</tr>
				<tr>
					<td>Secret Identity:</td>
					<td><form:input path="secretIdentity" /></td>
				</tr>
				<tr>
					<td>Number of others who know secret identity:</td>
					<td><form:input path="numOthersWhoKnowSecret" /></td>
				</tr>
				<tr>
					<td>Catchphrase:</td>
					<td><form:input path="catchphrase" /></td>
				</tr>
				<tr>
					<td>Universe Id:</td>
					<td><form:select path="universeId" items="${universeList}" /></td>
				</tr>
				<tr>
					<td colspan="2" id="createhero_formdiv_submit_td"><input
						id="submitbtn" type="submit" value="Create Hero!" /></td>
				</tr>
			</table>
		</form:form>
	</div>

	<!-- First attempt at a spinner -->
	<!-- 
	<div class="spinner_holder" width="100%" align="center">
		<div class="dots">Loading...</div>
	</div>
	-->
</body>
</html>