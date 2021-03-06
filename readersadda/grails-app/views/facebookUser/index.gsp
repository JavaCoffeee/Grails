
<%@ page import="com.readersadda.www.FacebookUser" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'facebookUser.label', default: 'FacebookUser')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-facebookUser" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-facebookUser" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="accessToken" title="${message(code: 'facebookUser.accessToken.label', default: 'Access Token')}" />
					
						<g:sortableColumn property="accessTokenExpires" title="${message(code: 'facebookUser.accessTokenExpires.label', default: 'Access Token Expires')}" />
					
						<g:sortableColumn property="uid" title="${message(code: 'facebookUser.uid.label', default: 'Uid')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${facebookUserInstanceList}" status="i" var="facebookUserInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${facebookUserInstance.id}">${fieldValue(bean: facebookUserInstance, field: "accessToken")}</g:link></td>
					
						<td><g:formatDate date="${facebookUserInstance.accessTokenExpires}" /></td>
					
						<td>${fieldValue(bean: facebookUserInstance, field: "uid")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${facebookUserInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
