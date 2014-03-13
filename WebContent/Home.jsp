<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<%@ page import="com.example.HCI.stores.*, java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<!-- <link rel="stylesheet" type="text/css" href="myStyle.css"> -->
<title>HCI Website</title>
<script>
	$(window).load(function() {
		$('.container').find('img').each(function() {
			var imgClass = (this.width / this.height > 1) ? 'wide' : 'tall';
			$(this).addClass(imgClass);
		});
	});
</script>
<!-- <form action="HCI" method="post">
	<h1 class="Header">Home</h1>
	<div id="wrapper">
		<ul>
			<li class="active"><input type="submit" name="home" value="Home">
			</li>
			<li><input type="submit" name="message" value="Messages"></li>
			<li><input type="submit" name="photos" value="Photos"></li>
		</ul>
	</div>
	<hr>
	Search:<input type="text" name="searchText" value="" class="">
	<input type="submit" name="searchbtn" value="Search" id="shiny">
</form> -->
</head>
<body>

<jsp:include page="PageHeader.jsp" />
	<div class="Displaydiv">
		<div>
			<form action="HCI" method="post">
				<h1 style="text-align: right">About me</h1>
				<p style="text-align: right">Full Name: New User</p>
				<p style="text-align: right">Age: 55</p>
				<p style="text-align: right">Email: newuser@example.co.uk</p>
				<div class="container">
					<img alt="Profile Picture" src="http://i.imgur.com/R9JX1Lz.jpg"
						style="width: 100%; height: 100%;">
				</div>
				<div style="top: -100px; position: relative">
					Post an update<input type="text" id="Message" name="Message"
						class="MsoNormal"><br> <input type="submit"
						name="post" value="Post Update" id="shiny"><br>
				</div>
			</form>
			<div class="updateDiv">
				<%
					List<PostStore> lTweet = (List<PostStore>) request
							.getAttribute("Updates");
					if (lTweet == null) {
				%>
				<p class="MsoNormal">No updates found</p>
				<%
					} else {
						Iterator<PostStore> iterator;

						iterator = lTweet.iterator();
						while (iterator.hasNext()) {
							PostStore ps = (PostStore) iterator.next();
				%>
				<p class="MsoNormal" value=><%=ps.getUser()%><br><%=ps.getPost()%></a>
				</p>
				<hr>
				<%
					}
					}
				%>
			</div>
		</div>
		<%
			
		%>
	</div>
</body>
</html>