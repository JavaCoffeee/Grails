<%@ page import="com.readersadda.www.Publisher" %>



<div class="fieldcontain ${hasErrors(bean: publisherInstance, field: 'about', 'error')} ">
	<label for="about">
		<g:message code="publisher.about.label" default="About" />
		
	</label>
	<g:textField name="about" value="${publisherInstance?.about}" />

</div>

<%--<div class="fieldcontain ${hasErrors(bean: publisherInstance, field: 'books', 'error')} ">
	<label for="books">
		<g:message code="publisher.books.label" default="Books" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${publisherInstance?.books?}" var="b">
    <li><g:link controller="book" action="show" id="${b.id}">${b?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="book" action="create" params="['publisher.id': publisherInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'book.label', default: 'Book')])}</g:link>
</li>
</ul>


</div>

--%><div class="fieldcontain ${hasErrors(bean: publisherInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="publisher.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${publisherInstance?.name}" />

</div>

<div class="fieldcontain ${hasErrors(bean: publisherInstance, field: 'publishDate', 'error')} ">
	<label for="publishDate">
		<g:message code="publisher.publishDate.label" default="Publish Date" />
		
	</label>
	<g:datePicker name="publishDate" precision="day" value="${publisherInstance?.publishDate}" />

</div>

