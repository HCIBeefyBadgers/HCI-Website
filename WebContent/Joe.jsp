<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<%@ page import="com.example.HCI.stores.*, java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<!-- <link rel="stylesheet" type="text/css" href="myStyle.css"> -->
<title>HCI Website</title>
	
	
	<style type="text/css">
.pic {
	margin-top: 50px;
	width: 120px;
	margin-left: 50px;
	margin-bottom: -60px;
}

.panel {
	background-image:
		url("http://autoimagesize.com/wp-content/uploads/2014/01/rainbow-aurora-background-wallpaper-colour-images-rainbow-background.jpg");
}

.name {
	position: absolute;
	padding-left: 200px;
	font-size: 30px;
}

.dropdown {
	position: absolute;
}

.change {
	position: relative;
	bottom: 20px;
	padding: 1px;
	color: white;
	text-decoration: none;
}

.change:hover {
	text-decoration: none;
	background-color: black;
	color: white;
}

textarea {
	resize: none;
}
</style>

</head>
<body>
	<jsp:include page="PageHeader.jsp" />
	<br>

	<link
		href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css"
		rel="stylesheet">


	<div class="container">
		<div class="row ">

			<div class="col-md-12">
				<div class="panel">
					<img class="pic img-circle"
						src="http://lh5.googleusercontent.com/-b0-k99FZlyE/AAAAAAAAAAI/AAAAAAAAAAA/twDq00QDud4/s120-c/photo.jpg"
						alt="...">
					<div class="name">
						<small>Joe Bloggs</small>
					</div>
				</div>

				<br> <br> <br>


			</div>
			<form action="<%=request.getContextPath()%>/Home" method="post">
				<textarea class="form-control" name="Message"
					placeholder="Hello, What you thinking?" rows="3" cols="50"></textarea>
				<button class="btn btn-success" type="submit">Post!</button>
			</form>
			<hr>

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


	</div>

	
	
	
	
	
	
	
	
</body>
</html>