<%@ page import="com.readersadda.www.Author" %>



<div class="fieldcontain ${hasErrors(bean: authorInstance, field: 'about', 'error')} ">
	<label for="about">
		<g:message code="author.about.label" default="About" />		
	</label>
	<g:textField name="about" value="${authorInstance?.about}" />
</div>

<div class="fieldcontain ${hasErrors(bean: authorInstance, field: 'address', 'error')} ">
	<label for="address">
		<g:message code="author.address.label" default="Address" />		
	</label>
	<g:textField name="address" value="${authorInstance?.address}" />

</div>

<%--<div class="fieldcontain ${hasErrors(bean: authorInstance, field: 'books', 'error')} ">
	<label for="books">
		<g:message code="author.books.label" default="Books" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${authorInstance?.books?}" var="b">
    <li><g:link controller="book" action="show" id="${b.id}">${b?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="book" action="create" params="['author.id': authorInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'book.label', default: 'Book')])}</g:link>
</li>
</ul>
</div>

--%>
<div class="fieldcontain ${hasErrors(bean: authorInstance, field: 'contact', 'error')} ">
	<label for="contact">
		<g:message code="author.contact.label" default="Contact" />
		
	</label>
	<g:textField name="contact" value="${authorInstance?.contact}" />

</div>

<div class="fieldcontain ${hasErrors(bean: authorInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="author.email.label" default="Email" />
		
	</label>
	<g:textField name="email" value="${authorInstance?.email}" />

</div>

<div class="fieldcontain ${hasErrors(bean: authorInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="author.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${authorInstance?.name}" />

</div>

