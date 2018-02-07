<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>List of all Heroes!</title>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="<c:url value="/resources/js/main.js" />"></script>
<link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">

</head>
<body>
	<table class="herolisttable">
		<tr class="herolisttable_tr">
			<th class="herolisttable_th">ID</th>
			<th class="herolisttable_th">Name</th>
			<th class="herolisttable_th">SecretIdentity</th>
			<th class="herolisttable_th">Catchphrase</th>
			<th class="herolisttable_th">Number of others who know the
				Secret Identity</th>
			<th class="herolisttable_th">Universe ID</th>
		</tr>
		<c:forEach var="hero" items="${heroList}">
			<tr class="herolisttable_tr">
				<td class="herolisttable_td">${hero.heroId}</td>
				<td class="herolisttable_td">${hero.heroName}</td>
				<td class="herolisttable_td">${hero.secretIdentity}</td>
				<td class="herolisttable_td">${hero.catchphrase}</td>
				<td class="herolisttable_td">
					<c:choose>
						<c:when test="${hero.numOthersWhoKnowSecret=='-1'}">Identity is Public!</c:when>
						<c:otherwise>${hero.numOthersWhoKnowSecret}</c:otherwise>
					</c:choose>
				</td>
				<td class="herolisttable_td">${hero.universeId}</td>

			</tr>
			<!-- this would just be a Hero.toString() -->
			<!-- <p class="listhero">${hero}</p> -->
		</c:forEach>
	</table>
</body>
</html>
