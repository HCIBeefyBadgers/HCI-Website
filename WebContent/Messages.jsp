<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<%@ page import="com.example.HCI.stores.*, java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<!-- <link rel="stylesheet" type="text/css" href="myStyle.css"> -->
<title>HCI Website</title>
</head>
<body>
	<jsp:include page="PageHeader.jsp" />

	<div>
		<form action="Messages" method="post">
			<div class="">
				<ul>
					<li><a href="#Joe" class="btn"
						style="padding: 10px; font-size: large;">Joe Bloggs</a>
						<hr></li>
					<li><a href="#Hugh" class="btn"
						style="padding: 10px; font-size: large;">Hugh Major Masterson</a>
						<hr></li>
					<li><a href="#Marshal" class="btn"
						style="padding: 10px; font-size: large;">Marshal Flynn Victor</a>
						<hr></li>
					<li><a href="#Benjy" class="btn"
						style="padding: 10px; font-size: large;">Benjy Zeph Danniel</a>
						<hr></li>
					<li><a href="#Braidy" class="btn"
						style="padding: 10px; font-size: large;">Braidy Codie Sessions</a>
						<hr></li>
					<li><a href="#Guy" class="btn"
						style="padding: 10px; font-size: large;">Guy Sinclair Smalls</a>
						<hr></li>
					<li><a href="#Coty" class="btn"
						style="padding: 10px; font-size: large;">Coty Ronald Toller</a>
						<hr></li>
				</ul>
			</div>
			<div class="submitDiv">
				Message:<br>
				<textarea type="text" id="Message" name="Message"
					class="MsoNormal" cols="38" rows="2"></textarea><input
					type="submit" name="reply" value="Send" class="btn-primary" />
				<hr>
			</div>
			<div class="messageDiv">
				<%
					List<MessageStore> lTweet = (List<MessageStore>) request
							.getAttribute("message");
					if (lTweet == null) {
				%>
				<br>
				<br>
				<p class="MsoNormal">No messages found</p>
				<%
					} else {
						Iterator<MessageStore> iterator;

						iterator = lTweet.iterator();
						while (iterator.hasNext()) {
							MessageStore ms = (MessageStore) iterator.next();
				%>
				<br>
				<p class="MsoNormal"><%=ms.getUser()%><br><%=ms.getMessage()%>
				</p>
				<%
					}
					}
				%>
			</div>
		</form>
	</div>
</body>
</html>