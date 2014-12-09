<%@ page import="com.readersadda.www.Book"%>

<div class="form-group">
	<label for="title" class="col-sm-3 control-label"> <g:message
			code="book.title.label" default="Title" />
	</label>
	<div class="col-sm-4">
		<g:textField name="title" value="${bookInstance?.title}"
			class="form-control" />
	</div>
</div>

<div class="form-group">
	<label for="isbn10" class="col-sm-3 control-label"> <g:message
			code="book.isbn10.label" default="Isbn-10" />
	</label>
	<div class="col-sm-4">
		<g:textField name="isbn10" value="${bookInstance?.isbn10}"
			class="form-control" />
	</div>
</div>

<div class="form-group">
	<label for="isbn13" class="col-sm-3 control-label"> <g:message
			code="book.isbn13.label" default="Isbn-13" />
	</label>
	<div class="col-sm-4">
		<g:textField name="isbn13" value="${bookInstance?.isbn13}"
			class="form-control" />
	</div>
</div>

<div class="form-group">
	<label for="price" class="col-sm-3 control-label"> <g:message
			code="book.price.label" default="Price" />
	</label>
	<div class="col-sm-4">
		<g:textField name="price" value="${bookInstance?.price}"
			class="form-control" />
	</div>
</div>

<div class="form-group">
	<label for="img" class="col-sm-3 control-label"> <g:message
			code="book.img.label" default="Img" />
	</label>
	<div class="col-sm-4">
		<input type="file" id="img" name="img" class="form-control" />
	</div>
</div>

<div class="form-group">
	<label for="category" class="col-sm-3 control-label"> <g:message
			code="book.category.label" default="Category" />
	</label>
	<div class="col-sm-4">
		<g:select id="category" name="category.id"
			from="${com.readersadda.www.Category.list()}" optionKey="id"
			required="" value="${bookInstance?.category?.id}" class="many-to-one"
			optionValue="category" class="form-control" />
	</div>
	Category is not listed here ? Click on Create Category Button to register Category
</div>

<div class="form-group">
	<label for="author" class="col-sm-3 control-label"> <g:message
			code="book.author.label" default="Author" />
	</label>
	<div class="col-sm-4">
		<g:select id="author" name="author.id"
			from="${com.readersadda.www.Author.list()}" optionKey="id"
			required="" value="${bookInstance?.author?.id}" class="many-to-one"
			optionValue="name" class="form-control" />
	</div>
	Author is not listed here ? Click on Create Author Button to register author
</div>

<div class="form-group">
	<label for="publisher" class="col-sm-3 control-label"> <g:message
			code="book.publisher.label" default="Publisher" />
	</label>
	<div class="col-sm-4">
		<g:select id="publisher" name="publisher.id"
			from="${com.readersadda.www.Publisher.list()}" optionKey="id"
			required="" value="${bookInstance?.publisher?.id}"
			class="many-to-one" optionValue="name" class="form-control" />
	</div>
	Publisher is not listed here ? Click on Create Publisher Button to register publisher
</div>

<div class="form-group">
	<label for="totalPage" class="col-sm-3 control-label"> <g:message
			code="book.totalPage.label" default="Total Page" />
	</label>
	<div class="col-sm-4">
		<g:textField name="totalPage" value="${bookInstance?.totalPage}"
			class="form-control" />
	</div>
</div>

<div class="form-group">
	<label for="about" class="col-sm-3 control-label"> <g:message
			code="book.about.label" default="About" />
	</label>
	<div class="col-sm-4">
		<g:textArea name="about" value="${bookInstance?.about}"
			class="form-control" style="height:200px"/>
	</div>

</div>

<%--<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'imgPath', 'error')} ">
	<label for="title">
		<g:message code="book.imgPath.label" default="Image" />
	</label>
	<g:hiddenField name="imgPath" value="${bookInstance?.imgPath}" />

</div>--%>