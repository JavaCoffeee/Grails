<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main">
<title>Welcome User</title>
<style>
body {
	counter-reset: Serial; /* Set the Serial counter to 0 */
}

table {
	border-collapse: separate;
}

tr td:first-child:before {
	counter-increment: Serial; /* Increment the Serial counter */
	content: counter(Serial); /* Display the counter */
}
</style>
</head>
<body>
	<ol class="breadcrumb">
		<li><a href="#">Welcome User</a></li>
	</ol>
	<div class="row">
		<div class="col-xs-4 col-sm-4 col-md-4 col-lg-3">
			<ul class="nav nav-pills nav-stacked">
				<li class="active"><a href="#">Test Link</a></li>
				<li><a href="${createLink(controller: 'logout')}"> Logout</a></li>
			</ul>
		</div>
		<div class="col-xs-8 col-sm-8 col-md-8 col-lg-9" id="subContent">
			<table>
				<tr>
					<th>Sr.No</th>
					<th>ISBN</th>
					<th>Title</th>
					<th>Author</th>
					<th>Price</th>
					<th>Publisher</th>
				</tr>

				<g:each in="${bookList}" var="book">

					<tr>
						<td></td><%--
						leave this blank for serial number
						--%><td>
							${book?.isbn }
						</td>
						<td>
							${book?.title}
						</td>
						<td>
							${book?.author?.name }
						</td>
						<td>
							${book?.price}
						</td>
						<td>
							${book?.publisher?.name }

						</td>
					</tr>
				</g:each>
			</table>

		</div>
	</div>
</body>
</html>
