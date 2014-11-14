
<%@ page import="com.readersadda.www.Author" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'author.label', default: 'Author')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-author" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-author" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list author">
			
				<g:if test="${authorInstance?.about}">
				<li class="fieldcontain">
					<span id="about-label" class="property-label"><g:message code="author.about.label" default="About" /></span>
					
						<span class="property-value" aria-labelledby="about-label"><g:fieldValue bean="${authorInstance}" field="about"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${authorInstance?.address}">
				<li class="fieldcontain">
					<span id="address-label" class="property-label"><g:message code="author.address.label" default="Address" /></span>
					
						<span class="property-value" aria-labelledby="address-label"><g:fieldValue bean="${authorInstance}" field="address"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${authorInstance?.books}">
				<li class="fieldcontain">
					<span id="books-label" class="property-label"><g:message code="author.books.label" default="Books" /></span>
					
						<g:each in="${authorInstance.books}" var="b">
						<%--<span class="property-value" aria-labelledby="books-label"><g:link controller="book" action="show" id="${b.id}">${b?.encodeAsHTML()}</g:link></span>
						--%>
						<span class="property-value" aria-labelledby="books-label"><g:link controller="book" action="show" id="${b.id}">${b?.title}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${authorInstance?.contact}">
				<li class="fieldcontain">
					<span id="contact-label" class="property-label"><g:message code="author.contact.label" default="Contact" /></span>
					
						<span class="property-value" aria-labelledby="contact-label"><g:fieldValue bean="${authorInstance}" field="contact"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${authorInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="author.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${authorInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${authorInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="author.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${authorInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:authorInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${authorInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
