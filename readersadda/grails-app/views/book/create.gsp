<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName"
	value="${message(code: 'book.label', default: 'Book')}" />
<title><g:message code="default.create.label"
		args="[entityName]" /></title>
</head>
<body>
	<ol class="breadcrumb">
		<li><a href="#">Add Book</a></li>
	</ol>
	<%--<a href="#create-book" class="skip" tabindex="-1"><g:message
			code="default.link.skip.label" default="Skip to content&hellip;" /></a>
	<div class="nav" role="navigation">
		<ul>
			<li><a class="home" href="${createLink(uri: '/')}"><g:message
						code="default.home.label" /></a></li>
			<li><g:link class="list" action="index">
					<g:message code="default.list.label" args="[entityName]" />
				</g:link></li>
		</ul>
	</div>
	
	<div id="create-book" class="content scaffold-create" role="main">
		<h1>
			<g:message code="default.create.label" args="[entityName]" />
		</h1>--%>
	<div class="panel panel-default">
		<div class="panel body">
			<g:if test="${flash.message}">
				<div class="message" role="status">
					${flash.message}
				</div>
			</g:if>
			<g:hasErrors bean="${bookInstance}">
				<div class="form-group col-sm-offset-2 col-sm-8">
					<ul role="alert">
						<g:eachError bean="${bookInstance}">
							<li class="text-danger"><g:message error="${it}" /></li>
						</g:eachError>
					</ul>
				</div>
			</g:hasErrors>
			<g:form url="[resource:bookInstance, action:'save']"
				enctype="multipart/form-data" class="form-horizontal">
				<fieldset class="form">
					<g:render template="form" />
				</fieldset>
				<fieldset class="buttons">
				<div class="form-group">
					<div class="col-sm-offset-3 col-sm-3">
					<g:submitButton name="create" class="save" class="btn btn-default"
						value="${message(code: 'default.button.create.label', default: 'Create')}" />
					</div>
					</div>
				</fieldset>
			</g:form>
		</div>
	</div>
</body>
</html>