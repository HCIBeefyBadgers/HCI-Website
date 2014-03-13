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
			<div class="friendDiv">
				<ul>
					<li><a href="#Joe" class="btn">Joe Bloggs</a>
						<hr></li>
					<li><a href="#Hugh" class="btn">Hugh Major Masterson</a>
						<hr></li>
					<li><a href="#Hugh" class="btn">Marshal Flynn Victor</a>
						<hr></li>
					<li><a href="#Hugh" class="btn">Benjy Zeph Danniel</a>
						<hr></li>
					<li><a href="#Hugh" class="btn">Braidy Codie Sessions</a>
						<hr></li>
					<li><a href="#Hugh" class="btn">Guy Sinclair Smalls</a>
						<hr></li>
					<li><a href="#Hugh" class="btn">Coty Ronald Toller</a>
						<hr></li>
				</ul>
			</div>
			<div class="submitDiv">

				Message:<input type="text" id="Message" name="Message"
					class="MsoNormal" style="width:500px; height:50px;"><input type="submit" name="reply"
					value="Send" class="btn-primary" />
				<hr>
			</div>
			<div class="messageDiv">
				<%
					List<MessageStore> lTweet = (List<MessageStore>) request
							.getAttribute("message");
					if (lTweet == null) {
				%>
				<br><br>
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