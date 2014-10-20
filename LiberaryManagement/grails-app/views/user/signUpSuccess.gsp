<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main">
<title>New User Sign Up</title>
</head>
<body>
	<ol class="breadcrumb">
		<li><a href="#">Sign Up</a></li>
	</ol>
	<div class="panel panel-default">
		<div class="panel-body">
			<div class="alert alert-success" role="alert">
				Congratulations
				${userInstance.firstname}! You have been Successfully Registered,
				Please
				<g:link controller='login' action='auth'>Login</g:link>
				now
			</div>
		</div>
	</div>
</body>
</html>
