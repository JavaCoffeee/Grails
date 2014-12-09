<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="layout" content="main" />
<title><g:message code="default.list.label" args="[entityName]" /></title>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

<script type="text/javascript"
	src="http://viralpatel.net/blogs/demo/jquery/jquery.shorten.1.0.js"></script>

<style>
a {
	color: #0254EB
}

a:visited {
	color: #0254EB
}

a.morelink {
	text-decoration: none;
	outline: none;
}

.morecontent span {
	display: none;
}

.comment {
	width: 400px;
	background-color: #f0f0f0;
	margin: 10px;
}
</style>
<script>
	$(document)
			.ready(
					function() {
						var showChar = 100;
						var ellipsestext = "...";
						var moretext = "more";
						var lesstext = "less";
						$('.more')
								.each(
										function() {
											var content = $(this).html();

											if (content.length > showChar) {

												var c = content.substr(0,
														showChar);
												var h = content.substr(
														showChar - 1,
														content.length
																- showChar);

												var html = c
														+ '<span class="moreellipses">'
														+ ellipsestext
														+ '&nbsp;</span><span class="morecontent"><span>'
														+ h
														+ '</span>&nbsp;&nbsp;<a href="" class="morelink">'
														+ moretext
														+ '</a></span>';

												$(this).html(html);
											}

										});

						$(".morelink").click(function() {
							if ($(this).hasClass("less")) {
								$(this).removeClass("less");
								$(this).html(moretext);
							} else {
								$(this).addClass("less");
								$(this).html(lesstext);
							}
							$(this).parent().prev().toggle();
							$(this).prev().toggle();
							return false;
						});
					});
</script>

<style>
img {
	display: block;
	width: auto; /*width : 100%*/
	height: 120px; /*height : auto*/
}
</style>
</head>
<body>
	<div class="body">
		<table class="table table-striped table-responsive">
			<thead>
				<tr>
					<g:sortableColumn property="isbn"
						title="${message(code: 'book.isbn.label', default: 'Isbn')}"
						style="text-align: center;" />

					<g:sortableColumn property="title"
						title="${message(code:'book.title.lable',default: 'Title') }"
						style="text-align: center;" />

					<g:sortableColumn property="about"
						title="${message(code: 'book.about.label', default: 'About')}"
						style="text-align: center;" />

					<%--<g:sortableColumn property="img"
						title="${message(code: 'book.img.label', default: 'Image')}" />
					--%>

					<g:sortableColumn property="price"
						title="${message(code: 'book.price.label', default: 'Price')}"
						style="text-align: center;" />

					<g:sortableColumn property="author"
						title="${message(code:'book.author.label',default: 'Author') }"
						style="text-align: center;" />

					<g:sortableColumn property="publisher"
						title="${message(code:'book.publisher.label',default:'Publisher') }"
						style="text-align: center;" />

				</tr>
			</thead>
			<tbody>
				<g:each in="${bookInstanceList}" status="i" var="bookInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}"
						style="text-align: center;">
						<td><g:link action="show" id="${bookInstance.id}">
								${fieldValue(bean: bookInstance, field: "isbn")}
							</g:link></td>

						<td>
							${fieldValue(bean: bookInstance , field: "title") }
						</td>

						<td>
							<div class="comment more">
								${fieldValue(bean: bookInstance, field: "about")}
							</div>
						</td>

						<%--<td><img
							src="${createLink(controller : 'book' , action:'loadImg' , id:"${bookInstance.id}")}"></img></td>

						--%>
						<td>
							<b><del>&#2352;</del></b>&nbsp${fieldValue(bean: bookInstance, field: "price")}
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
			<g:paginate total="${bookInstanceCount ?: 0}" max="1"/>			
			<%--<g:paginate next="Forward" prev="Back"
            maxsteps="0" controller="book"
            action="listbook" total="${bookInstanceCount}" max="1" />
		--%></div>
	</div>
</body>
</html>