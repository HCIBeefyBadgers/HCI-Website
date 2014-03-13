<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link href="<%=request.getContextPath()%>/css/bootstrap.css"
	rel="stylesheet">
<link href="<%=request.getContextPath()%>/css/bootstrap-theme.css"
	rel="stylesheet">
<link href="<%=request.getContextPath()%>/css/bootstrap-theme.min.css"
	rel="stylesheet">
<link href="<%=request.getContextPath()%>/css/jumbotron.css"
	rel="stylesheet">
<link href="<%=request.getContextPath()%>/css/starter-template.css"
	rel="stylesheet">

</head>

<body>
	<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span>
				</button>

				<a accesskey="home" class="navbar-brand"
					href="<%=request.getContextPath()%>/Home"><font face="Andy"
					size="5px" color="White">New Book</font></a>

			</div>
			<div class="collapse navbar-collapse">
				<ul class="nav navbar-nav">
					<li><a href="<%=request.getContextPath()%>/Home"><font
							size="3px" color="White">Home</font></a></li>
				</ul>
				<ul class="nav navbar-nav">
					<li><a href="<%=request.getContextPath()%>/Messages"><font
							size="3px" color="White">Messages</font></a></li>
				</ul>
				<ul class="nav navbar-nav">
					<li><a href="<%=request.getContextPath()%>/Photos"><font
							size="3px" color="White" >Photos</font></a></li>
				</ul>
				<form action=""
					class="navbar-form navbar-right" role="form">
					<button type="submit" class="btn btn-warning">Log out</button>

				</form>

				<form action="<%=request.getContextPath()%>/Search"
					class="navbar-form navbar-right" role="form">
					<div class="form-group">
						<input class="form-control" id="search_bar" name="searchText"
							placeholder="Search User Name" type="text" maxlength="35"
							size="45px" autocomplete="off">
					</div>
					<button type="submit" class="btn btn-info">Search</button>
				</form>

			</div>
			<!--/.nav-collapse -->
		</div>
	</div>


</body>
</html>