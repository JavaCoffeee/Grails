<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main">
<title>Welcome Admin</title>
</head>
<body>
	<ol class="breadcrumb">
		<li><a href="#">Welcome Admin</a></li>
	</ol>
	<div class="row">
		<div class="col-xs-4 col-sm-4 col-md-4 col-lg-3">
			<ul class="nav nav-pills nav-stacked">
				<li class="active"><a href="#">Manage Users</a></li>
				<li><a href="${createLink(controller: 'logout')}"> Logout</a></li>
			</ul>
		</div>
		<div class="col-xs-8 col-sm-8 col-md-8 col-lg-9" id="subContent">
			<center>
				<b>Welcome to Reader's Adda</b>
			</center>
		</div>
	</div>
</body>
</html>
