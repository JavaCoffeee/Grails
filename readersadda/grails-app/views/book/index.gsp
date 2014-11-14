
<%@ page import="com.readersadda.www.Book"%>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName"
	value="${message(code: 'book.label', default: 'Book')}" />
<title><g:message code="default.list.label" args="[entityName]" /></title>
<style>
img {
	display: block;
	width: auto; /*width : 100%*/
	height: 120px; /*height : auto*/
}
</style>
</head>
<body>
	<a href="#list-book" class="skip" tabindex="-1"><g:message
			code="default.link.skip.label" default="Skip to content&hellip;" /></a>
	<div class="nav" role="navigation">
		<ul>
			<li><a class="home" href="${createLink(uri: '/')}"><g:message
						code="default.home.label" /></a></li>
			<li><g:link class="create" action="create">
					<g:message code="default.new.label" args="[entityName]" />
				</g:link></li>
		</ul>
	</div>
	<div id="list-book" class="content scaffold-list" role="main">
		<h1>
			<g:message code="default.list.label" args="[entityName]" />
		</h1>
		<g:if test="${flash.message}">
			<div class="message" role="status">
				${flash.message}
			</div>
		</g:if>
		<table>
			<thead>
				<tr>

					<g:sortableColumn property="isbn"
						title="${message(code: 'book.isbn.label', default: 'Isbn')}" />

					<g:sortableColumn property="title"
						title="${message(code:'book.title.lable',default: 'Title') }" />

					<g:sortableColumn property="about"
						title="${message(code: 'book.about.label', default: 'About')}" />

					<g:sortableColumn property="img"
						title="${message(code: 'book.img.label', default: 'Image')}" />

					<g:sortableColumn property="price"
						title="${message(code: 'book.price.label', default: 'Price')}" />

					<th><g:message code="book.author.label" default="Author" /></th>


					<th><g:message code="book.publisher.label" default="Publisher" /></th>

				</tr>
			</thead>
			<tbody>
				<g:each in="${bookInstanceList}" status="i" var="bookInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

						<td><g:link action="show" id="${bookInstance.id}">
								${fieldValue(bean: bookInstance, field: "isbn")}
							</g:link></td>

						<td>
							${fieldValue(bean: bookInstance , field: "title") }
						</td>

						<td>
							${fieldValue(bean: bookInstance, field: "about")}
						</td>

						<td><img
							src="${createLink(controller : 'book' , action:'loadImg' , id:"${bookInstance.id}")}"></img></td>

						<td>
							${fieldValue(bean: bookInstance, field: "price")}
						</td>

						<td>
							${fieldValue(bean: bookInstance, field: "author.name")}
						</td>

						<td>
							${fieldValue(bean: bookInstance, field: "publisher.name")}
						</td>

					</tr>
				</g:each>
			</tbody>
		</table>
		<div class="pagination">
			<g:paginate total="${bookInstanceCount ?: 0}" />
		</div>
	</div>
</body>
</html>
