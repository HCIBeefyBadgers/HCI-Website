<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<!-- <link rel="stylesheet" type="text/css" href="myStyle.css"> -->
<title>HCI Website</title>
<!-- <form action="HCI" method="post">
	<h1 class="Header">Joe Bloggs</h1>
	<ul>
		<li><input type="submit" name="home" value="Home" id="shiny"></li>
		<li><input type="submit" name="message" value="Messages"
			id="shiny"></li>
		<li><input type="submit" name="photos" value="Photos"
			id="shiny"></li>
	</ul>
	<hr>
	Search:<input type="text" name="searchText" value="" class="">
	<input type="submit" name="searchbtn" value="Search" id="shiny">
</form> -->
</head>
<body>
	<jsp:include page="PageHeader.jsp" />
	<form action="HCI" method="post">
		<div class="Displaydiv">
			Joe's Page:<input type="text" id="Message" name="Message"
				class="MsoNormal"><br> <input type="submit" name="send"
				value="Post Update" class="mybtn"><br>
		</div>
	</form>
</body>
</html>