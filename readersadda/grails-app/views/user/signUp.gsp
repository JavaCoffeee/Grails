<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="layout" content="main" />
<title>SignUp for Free</title>
</head>
<body>
	<ol class="breadcrumb">
		<li><a href="#">SignUp</a></li>
	</ol>
	<div class="panel panel-default">
		<div class="panel body">
			<g:if test="${flash.message}">
				<div class="message" role="status">
					${flash.message}
				</div>
			</g:if>
			<g:hasErrors bean="${userInstance}">
				<div class="form-group col-sm-offset-2 col-sm-8">
					<ul role="alert">
						<g:eachError bean="${userInstance}">
							<li class="text-danger"><g:message error="${it}" /></li>

						</g:eachError>
					</ul>
				</div>
			</g:hasErrors>
			<g:form url="[resource : userInstance , action : 'signUpSave']"
				class="form-horizontal" autocomplete='off'>
				<div class="form-group">
					<label for="firstname" class="col-sm-3 control-label">First
						Name</label>
					<div class="col-sm-4">
						<g:textField name="firstname" value="${userInstance?.firstname}"
							class="form-control" />
					</div>
				</div>
				<div class="form-group">
					<label for="'lastname'" class="col-sm-3 control-label">Lastname:</label>
					<div class="col-sm-4">
						<g:textField name="lastname" value="${userInstance?.lastname}"
							class="form-control" />
					</div>
				</div>
				<div class="form-group">
					<label for="'email'" class="col-sm-3 control-label">Email:</label>
					<div class="col-sm-4">
						<g:textField name="email" value="${userInstance?.email}"
							class="form-control" />
					</div>
				</div>
				<div class="form-group">
					<label for="'username'" class="col-sm-3 control-label">Username:</label>
					<div class="col-sm-4">
						<g:textField name="username" value="${userInstance?.username}"
							class="form-control" />
					</div>
				</div>
				<div class="form-group">
					<label for="'password'" class="col-sm-3 control-label">Password:</label>
					<div class="col-sm-4">
						<g:passwordField name="password" value="${userInstance?.password}"
							class="form-control" />
					</div>
				</div>
				<div class="form-group">
					<label for="'confirmPassword'" class="col-sm-3 control-label">Confirm
						Password:</label>
					<div class="col-sm-4">
						<g:passwordField name="confirmPassword"
							value="${userInstance?.confirmPassword}" class="form-control" />
					</div>
				</div>

				<div class="form-group">
					<label for="'confirmPassword'" class="col-sm-3 control-label">User
						Status </label>
					<div class="col-sm-4">
						<g:textField name="userstatus" value="${params.userstatus}" />
					</div>
				</div>

				<div class="form-group">
					<div class="col-sm-offset-3 col-sm-3">
						<g:submitButton name="create" class="btn btn-default"
							value="Sign Up" />
					</div>
				</div>
			</g:form>
		</div>
	
	</div>
</body>
</html>