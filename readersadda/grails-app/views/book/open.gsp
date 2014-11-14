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

#leftCol.img {
	display: block;
	width: 20%; /*width : 100%*/
	height: auto; /*height : auto*/
}

#leftCol {
	float: left;
}

#centerCol {
	float: center;
}

#rightCol {
	float: right;
}
</style>
</head>
<body>
	<ol class="breadcrumb">
		<li><a href="#">Welcome User</a></li>
	</ol>
	<div id="leftCol" class="col-md-3">
		<img
			src="${createLink(controller: 'book', action: 'loadImg' , id : "${bookInstance.id}")}" />
	</div>
	<div id="rightCol" class="panel">
		<b><del>&#2352;</del></b>&nbsp${bookInstance?.price}
	</div>
	<div id="centerCol" class="col-md-10">
		<b> ${bookInstance?.title}
		</b> <br /> by
		${bookInstance?.author?.name}
		<br /> <br />
		<p>
			${bookInstance?.about}
		</p>
	</div>
	</div>
</body>
</html>
