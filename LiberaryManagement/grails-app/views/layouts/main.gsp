<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html lang="en" class="no-js">
<!--<![endif]-->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title><g:layoutTitle default="Grails" /></title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="${assetPath(src: 'favicon.ico')}"
	type="image/x-icon">
<link rel="apple-touch-icon"
	href="${assetPath(src: 'apple-touch-icon.png')}">
<link rel="apple-touch-icon" sizes="114x114"
	href="${assetPath(src: 'apple-touch-icon-retina.png')}">
<asset:stylesheet src="application.css" />
<asset:javascript src="application.js" />
<g:javascript plugin="jquery" library="jquery"
	src="jquery/jquery-1.11.1.js" />
<r:require modules="bootstrap" />
<g:layoutHead />
<r:layoutResources />
</head>
<body>
	<!-- page -->
	<div class="wrapper">
		<!-- header -->
		<header id="header">
			<nav class="navbar navbar-default" role="navigation">
				<div class="container">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
						<a class="navbar-brand" href="${createLink(uri: '/')}"
							style="padding: 2px;"><asset:image src="logo.png"
								alt="Reader's Adda" style="max-height: 40px;" />Reader's Adda</a>
					</div>
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse"
						id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav">
						</ul>
						<ul class="nav navbar-nav navbar-right">

							<sec:ifAllGranted roles="ROLE_ADMIN">
								<li><a href="#">Manage User</a></li>
								<li><g:link controller="author" action="index">Add Author</g:link></li>
								<li><g:link controller="book" action="index">Add Book</g:link></li>
								<li><g:link controller="publisher" action="index">Add Publisher</g:link></li>
							</sec:ifAllGranted>

							<sec:ifAllGranted roles="ROLE_USER">
								<li><a href="#">Test Link</a></li>
							</sec:ifAllGranted>
							
							<sec:ifNotLoggedIn>
								<li><g:link controller='login' action='auth'>Login</g:link></li>
							</sec:ifNotLoggedIn>
							<sec:ifNotLoggedIn>
								<li><g:link controller='user' action='signUp'>Sign Up</g:link></li>
							</sec:ifNotLoggedIn>
							<sec:ifLoggedIn>
								<li><a href="${createLink(controller: 'logout')}">
										Logout</a></li>
							</sec:ifLoggedIn>
						</ul>
					</div>
					<!-- /.navbar-collapse -->
				</div>
				<!-- /.container-fluid -->
			</nav>
		</header>
		<!-- /header -->
		<div class="container">
			<!-- content -->
			<div id="content">
				<g:layoutBody />
			</div>
			<!-- /content -->
		</div>
		<div class="push">
			<!--//-->
		</div>
	</div>
	<!-- /page -->
	<!-- footer -->
	<footer> </footer>
	<!-- /footer -->
</html>


<%--<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html lang="en" class="no-js">
<!--<![endif]-->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title><g:layoutTitle default="Grails" /></title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="${assetPath(src: 'favicon.ico')}"
	type="image/x-icon">
<link rel="apple-touch-icon"
	href="${assetPath(src: 'apple-touch-icon.png')}">
<link rel="apple-touch-icon" sizes="114x114"
	href="${assetPath(src: 'apple-touch-icon-retina.png')}">
<asset:stylesheet src="application.css" />
<asset:javascript src="application.js" />
<g:javascript plugin="jquery" library="jquery"
	src="jquery/jquery-1.11.1.js" />
<g:javascript library="jquery.ajax-cross-origin.min"></g:javascript>
<asset:javascript src="jquery.ajax-cross-origin.min.js" />
<r:require modules="bootstrap" />
<g:layoutHead />
<r:layoutResources />
</head>
<body>
	<!-- page -->
	<div class="wrapper">
		<!-- header -->
		<header id="header">
			<nav class="navbar navbar-default" role="navigation">
				<div class="container">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
						<a class="navbar-brand" href="${createLink(uri: '/')}"
							style="padding: 2px;"><asset:image src="grails_logo.png"
								alt="Massiv Clouds" style="max-height: 40px;" /> Armada</a>
					</div>
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse"
						id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav">
						</ul>
						<ul class="nav navbar-nav navbar-right">

							<sec:ifAllGranted roles="ROLE_ADMIN">
								<li><g:link controller='service' action='index'>Service Catalog</g:link></li>
							</sec:ifAllGranted>

							<sec:ifAllGranted roles="ROLE_ADMIN">
								<li><g:link controller='user' action='index'>Manage Users</g:link></li>
							</sec:ifAllGranted>
							<sec:ifAllGranted roles="ROLE_USER">
								<li><g:link controller='workflow' action='startWorkflow'>Create Droplet</g:link></li>
							</sec:ifAllGranted>
							<sec:ifAllGranted roles="ROLE_USER">
								<li><g:link controller='workflow'
										action='startDeployService'>Deploy Services</g:link></li>
							</sec:ifAllGranted>

							<sec:ifAllGranted roles="ROLE_USER">
								<li><g:link controller='provider' action='index'>Add Provider</g:link></li>
							</sec:ifAllGranted>
							<sec:ifNotLoggedIn>
								<li><g:link controller='login' action='auth'>Login</g:link></li>
							</sec:ifNotLoggedIn>
							<sec:ifNotLoggedIn>
								<li><g:link controller='user' action='signUp'>Sign Up</g:link></li>
							</sec:ifNotLoggedIn>
							<sec:ifLoggedIn>
								<li><a href="${createLink(controller: 'logout')}">
										Logout</a></li>
							</sec:ifLoggedIn>
						</ul>
					</div>
					<!-- /.navbar-collapse -->
				</div>
				<!-- /.container-fluid -->
			</nav>
		</header>
		<!-- /header -->
		<div class="container">
			<!-- content -->
			<div id="content">
				<g:layoutBody />
			</div>
			<!-- /content -->
		</div>
		<div class="push">
			<!--//-->
		</div>
	</div>
	<!-- /page -->
	<!-- footer -->
	<footer> </footer>
	<!-- /footer -->
</html>
--%>