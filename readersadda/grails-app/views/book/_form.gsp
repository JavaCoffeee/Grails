<%@ page import="com.readersadda.www.Book" %>



<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'about', 'error')} ">
	<label for="about">
		<g:message code="book.about.label" default="About" />
		
	</label>
	<g:textField name="about" value="${bookInstance?.about}" />

</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'author', 'error')} ">
	<label for="author">
		<g:message code="book.author.label" default="Author" />
		
	</label>
	<g:select id="author" name="author.id" from="${com.readersadda.www.Author.list()}" optionKey="id" required="" value="${bookInstance?.author?.id}" class="many-to-one" optionValue="name"/>

</div>

<div class="fieldcontain">
	<label for="img">
		<g:message code="book.img.label" default="Img" />
		
	</label>
	<input type="file" id="img" name="img" />

</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'isbn', 'error')} ">
	<label for="isbn">
		<g:message code="book.isbn.label" default="Isbn" />
		
	</label>
	<g:textField name="isbn" value="${bookInstance?.isbn}" />

</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'price', 'error')} ">
	<label for="price">
		<g:message code="book.price.label" default="Price" />
		
	</label>
	<g:textField name="price" value="${bookInstance?.price}" />

</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'publisher', 'error')} ">
	<label for="publisher">
		<g:message code="book.publisher.label" default="Publisher" />		
	</label>
	<g:select id="publisher" name="publisher.id" from="${com.readersadda.www.Publisher.list()}" optionKey="id" required="" value="${bookInstance?.publisher?.id}" class="many-to-one" optionValue="name"/>

</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'title', 'error')} ">
	<label for="title">
		<g:message code="book.title.label" default="Title" />
	</label>
	<g:textField name="title" value="${bookInstance?.title}" />

</div>

<%--<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'imgPath', 'error')} ">
	<label for="title">
		<g:message code="book.imgPath.label" default="Image" />
	</label>
	<g:hiddenField name="imgPath" value="${bookInstance?.imgPath}" />

</div>--%>