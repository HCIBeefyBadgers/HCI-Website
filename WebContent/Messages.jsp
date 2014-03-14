<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page
	import="com.example.HCI.stores.*, java.util.*, java.text.SimpleDateFormat"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link
	href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css"
	rel="stylesheet">
</head>
<body>
	<jsp:include page="PageHeader.jsp" />

	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-3 col-md-3 sidebar">
				<br> <font size="5"
					style="position: fixed; left: 10px; top: 60px;">Inbox</font>
				<ul class="nav nav-sidebar"
					style="overflow: auto; height: 500px; width: 250px; position: fixed; left: 0px; top: 100px;">

					<li class="active"></li>
					<li><a href="#Joe" style="font-size: 16px;">Joe Bloggs</a>
						<hr></li>

					<li><a href="#Hugh" style="font-size: 16px;">Hugh Major
							Masterson</a>
						<hr></li>

					<li><a href="#Marshal" style="font-size: 16px;">Marshal
							Flynn Victor</a>
						<hr></li>

					<li><a href="#Benjy" style="font-size: 16px;">Benjy Zeph
							Danniel</a>
						<hr></li>

					<li><a href="#Braidy" style="font-size: 16px;">Braidy
							Codie Sessions</a>
						<hr></li>

					<li><a href="#Guy" style="font-size: 16px;">Guy Sinclair
							Smalls</a>
						<hr></li>

					<li><a href="#Coty" style="font-size: 16px;">Coty Ronald
							Toller</a>
						<hr></li>

					<li><a href="#Joe" style="font-size: 16px;">Joe Bloggs</a>
						<hr></li>

					<li><a href="#Hugh" style="font-size: 16px;">Hugh Major
							Masterson</a>
						<hr></li>

					<li><a href="#Marshal" style="font-size: 16px;">Marshal
							Flynn Victor</a>
						<hr></li>

					<li><a href="#Benjy" style="font-size: 16px;">Benjy Zeph
							Danniel</a>
						<hr></li>

					<li><a href="#Braidy" style="font-size: 16px;">Braidy
							Codie Sessions</a>
						<hr></li>

					<li><a href="#Guy" style="font-size: 16px;">Guy Sinclair
							Smalls</a>
						<hr></li>

					<li><a href="#Coty" style="font-size: 16px;">Coty Ronald
							Toller</a>
						<hr></li>
				</ul>

			</div>
			<div class="col-sm-9 col-sm-offset-3 col-md-9 col-md-offset-3 main">
				<div class="row">
					<div class="message-wrap col-lg-8">
						<div class="msg-wrap" style="overflow: auto; height: 420px;">


							<%
								Calendar cal = Calendar.getInstance();
								cal.getTime();
								SimpleDateFormat sdf = new SimpleDateFormat("HH:mm:ss");
							%>

							<%
								List<MessageStore> lTweet = (List<MessageStore>) request
										.getAttribute("message");
								if (lTweet == null) {
							%>

							<br> <br>
							<p class="MsoNormal">No messages found</p>
							<%
								} else {
									Iterator<MessageStore> iterator;

									iterator = lTweet.iterator();
									while (iterator.hasNext()) {
										MessageStore ms = (MessageStore) iterator.next();
							%>
							<div class="media msg">
								<a class="pull-left" href="#"> <img class="media-object"
									data-src="holder.js/64x64" alt="64x64"
									style="width: 32px; height: 32px;"
									src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEAAAABACAYAAACqaXHeAAACqUlEQVR4Xu2Y60tiURTFl48STFJMwkQjUTDtixq+Av93P6iBJFTgg1JL8QWBGT4QfDX7gDIyNE3nEBO6D0Rh9+5z9rprr19dTa/XW2KHl4YFYAfwCHAG7HAGgkOQKcAUYAowBZgCO6wAY5AxyBhkDDIGdxgC/M8QY5AxyBhkDDIGGYM7rIAyBgeDAYrFIkajEYxGIwKBAA4PDzckpd+322243W54PJ5P5f6Omh9tqiTAfD5HNpuFVqvFyckJms0m9vf3EY/H1/u9vb0hn89jsVj8kwDfUfNviisJ8PLygru7O4TDYVgsFtDh9Xo9NBrNes9cLgeTybThgKenJ1SrVXGf1WoVDup2u4jFYhiPx1I1P7XVBxcoCVCr1UBfTqcTrVYLe3t7OD8/x/HxsdiOPqNGo9Eo0un02gHkBhJmuVzC7/fj5uYGXq8XZ2dnop5Mzf8iwMPDAxqNBmw2GxwOBx4fHzGdTpFMJkVzNB7UGAmSSqU2RoDmnETQ6XQiOyKRiHCOSk0ZEZQcUKlU8Pz8LA5vNptRr9eFCJQBFHq//szG5eWlGA1ywOnpqQhBapoWPfl+vw+fzweXyyU+U635VRGUBOh0OigUCggGg8IFK/teXV3h/v4ew+Hwj/OQU4gUq/w4ODgQrkkkEmKEVGp+tXm6XkkAOngmk4HBYBAjQA6gEKRmyOL05GnR99vbW9jtdjEGdP319bUIR8oA+pnG5OLiQoghU5OElFlKAtCGr6+vKJfLmEwm64aosd/XbDbbyIBSqSSeNKU+HXzlnFAohKOjI6maMs0rO0B20590n7IDflIzMmdhAfiNEL8R4jdC/EZIJj235R6mAFOAKcAUYApsS6LL9MEUYAowBZgCTAGZ9NyWe5gCTAGmAFOAKbAtiS7TB1Ng1ynwDkxRe58vH3FfAAAAAElFTkSuQmCC">
								</a>
								<div class="media-body">
									<small class="pull-right time"><i class="fa fa-clock-o"></i>
										<%=sdf.format(cal.getTime())%></small>

									<h5 class="media-heading"><%=ms.getUser()%></h5>
									<small class="col-lg-10"><%=ms.getMessage()%></small>
								</div>
							</div>



							<%
								}
								}
							%>



						</div>

						<br>
						<form action="<%=request.getContextPath()%>/Messages" method="post">
							<div class="send-wrap ">

								<textarea class="form-control send-message" name="Message" rows="3"
									placeholder="Write a reply..."></textarea>


							</div>
							<div class="btn-panel">
								<input type="submit" name="reply" value="Send"
									class="btn-primary pull-right" />
							</div>
						</form>
					</div>
				</div>

			</div>

		</div>
	</div>



	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	<script src="../../dist/js/bootstrap.min.js"></script>
	<script src="../../assets/js/docs.min.js"></script>
</body>
</html>