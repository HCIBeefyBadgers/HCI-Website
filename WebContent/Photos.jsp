<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<!-- <link rel="stylesheet" type="text/css" href="myStyle.css"> -->
<title>HCI Website</title>

<!-- Add jQuery library -->
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>


<!-- Add fancyBox -->
<link rel="stylesheet" href="/fancybox/source/jquery.fancybox.css?v=2.1.5" type="text/css" media="screen" />
<script type="text/javascript" src="/fancybox/source/jquery.fancybox.pack.js?v=2.1.5"></script>



<style type="text/css">
.gallery {
	display: inline-block;
	margin-top: 20px;
}
</style>

<!-- <script>
	$(window).load(function() {
		$('.container').find('img').each(function() {
			var imgClass = (this.width / this.height > 1) ? 'wide' : 'tall';
			$(this).addClass(imgClass);
		})
	})
</script> -->

<!-- <form action="HCI" method="post">
	<h1 class="Header">Messages</h1>
	<ul>
		<li><input type="submit" name="home" value="Home" id="shiny"></li>
		<li><input type="submit" name="message" value="Messages"
			id="shiny"></li>
	</ul>
	<hr>
	Search:<input type="text" name="searchText" value="" class="">
	<input type="submit" name="searchbtn" value="Search" id="shiny">
</form> -->
</head>
<body>
	<jsp:include page="PageHeader.jsp" />
	<script>
	$(document).ready(function() {
		//FANCYBOX
		//https://github.com/fancyapps/fancyBox
		$(".fancybox").fancybox({
			openEffect : "none",
			closeEffect : "none"
		});
	});
</script>
	<!-- References: https://github.com/fancyapps/fancyBox -->


	<div class="container">
		<div class="row">
			<div class='list-group gallery'>
				<div class='col-sm-4 col-xs-6 col-md-3 col-lg-3'>
					<a class="thumbnail fancybox" rel="ligthbox"
						href="http://placehold.it/300x320.png"> <img
						class="img-responsive" alt="" src="http://placehold.it/320x320" />
						<div class='text-right'>
							<small class='text-muted'>Image Title</small>
						</div> <!-- text-right / end -->
					</a>
				</div>
				<!-- col-6 / end -->
				<div class='col-sm-4 col-xs-6 col-md-3 col-lg-3'>
					<a class="thumbnail fancybox" rel="ligthbox"
						href="http://placehold.it/300x320.png"> <img
						class="img-responsive" alt="" src="http://placehold.it/320x320" />
						<div class='text-right'>
							<small class='text-muted'>Image Title</small>
						</div> <!-- text-right / end -->
					</a>
				</div>
				<!-- col-6 / end -->
				<div class='col-sm-4 col-xs-6 col-md-3 col-lg-3'>
					<a class="thumbnail fancybox" rel="ligthbox"
						href="http://placehold.it/300x320.png"> <img
						class="img-responsive" alt="" src="http://placehold.it/320x320" />
						<div class='text-right'>
							<small class='text-muted'>Image Title</small>
						</div> <!-- text-right / end -->
					</a>
				</div>
				<!-- col-6 / end -->
				<div class='col-sm-4 col-xs-6 col-md-3 col-lg-3'>
					<a class="thumbnail fancybox" rel="ligthbox"
						href="http://placehold.it/300x320.png"> <img
						class="img-responsive" alt="" src="http://placehold.it/320x320" />
						<div class='text-right'>
							<small class='text-muted'>Image Title</small>
						</div> <!-- text-right / end -->
					</a>
				</div>
				<!-- col-6 / end -->
				<div class='col-sm-4 col-xs-6 col-md-3 col-lg-3'>
					<a class="thumbnail fancybox" rel="ligthbox"
						href="http://placehold.it/300x320.png"> <img
						class="img-responsive" alt="" src="http://placehold.it/320x320" />
						<div class='text-right'>
							<small class='text-muted'>Image Title</small>
						</div> <!-- text-right / end -->
					</a>
				</div>
				<!-- col-6 / end -->
				<div class='col-sm-4 col-xs-6 col-md-3 col-lg-3'>
					<a class="thumbnail fancybox" rel="ligthbox"
						href="http://placehold.it/300x320.png"> <img
						class="img-responsive" alt="" src="http://placehold.it/320x320" />
						<div class='text-right'>
							<small class='text-muted'>Image Title</small>
						</div> <!-- text-right / end -->
					</a>
				</div>
				<!-- col-6 / end -->
			</div>
			<!-- list-group / end -->
		</div>
		<!-- row / end -->
	</div>
	<!-- container / end -->
</body>
</html>