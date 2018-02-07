<%@ page contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title>Hero GUI</title>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script>
	$(document).ready(function() {
		$("#flip").click(function() {
			$("#panel").slideToggle("slow");
		});
	});
</script>

<style>
#panel,#flip {
	padding: 5px;
	text-align: center;
	background-color: #e5eecc;
	border: solid 1px #c3c3c3;
}

#panel {
	padding: 50px;
	display: none;
}
</style>
</head>
<body>
	<div id="flip">Who is ${heroName}?</div>
	<div id="panel">${secretIdentity}</div>
</body>
</html>
