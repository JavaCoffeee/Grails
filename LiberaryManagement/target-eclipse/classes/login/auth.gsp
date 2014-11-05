<html>
<head>
<meta name='layout' content='main' />
<title><g:message code="springSecurity.login.title" /></title>
</head>

<body>

	<ol class="breadcrumb">
		<li><a href="#"><g:message code="springSecurity.login.header" /></a></li>
	</ol>

	<facebookAuth:init />

	<!-- <div id='login'>
	 <div class='inner'>
<facebookAuth:connect permissions="email,user_about_me,publish_stream"/>
            <p>or</p>
            <form action='${postUrl}' method='POST' id='loginForm' class='cssform' autocomplete='off'>
	</div>
</div> -->

	<div class="panel panel-default">
		<div class="panel-body">
			<form class="form-horizontal" role="form" action='${postUrl}'
				method='POST' id='loginForm' autocomplete='off'>
				<g:if test='${flash.message}'>
					<div class="form-group col-sm-offset-3 col-sm-10">
						<ul role="alert">
							<li class="text-danger">
								${flash.message}
							</li>
						</ul>
					</div>
				</g:if>
				<div class="form-group">
					<label for="username" class="col-sm-3 control-label"><g:message
							code="springSecurity.login.username.label" />:</label>
					<div class="col-sm-4">
						<input type='text' class='form-control' name='j_username'
							id='username' placeholder="Username" />
					</div>
				</div>
				<div class="form-group">
					<label for="'password'" class="col-sm-3 control-label"><g:message
							code="springSecurity.login.password.label" />:</label>
					<div class="col-sm-4">
						<input type="password" class="form-control" name='j_password'
							id='password' placeholder="Password">
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-3 col-sm-3">
						<div class="checkbox">
							<label> <input type="checkbox"
								name='${rememberMeParameter}' id='remember_me'
								<g:if test='${hasCookie}'>checked='checked'</g:if> /> <g:message
									code="springSecurity.login.remember.me.label" />
							</label>
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-3 col-sm-3">
						<input type='submit' id="submit" class="btn btn-default"
							value='${message(code: "springSecurity.login.button")}' />
					</div>
				</div>
			</form>
		</div>
	</div>
	<script type='text/javascript'>
	<!--
		(function() {
			document.forms['loginForm'].elements['j_username'].focus();
		})();
	// -->
	</script>
</body>
</html>

