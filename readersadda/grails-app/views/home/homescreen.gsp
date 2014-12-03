<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main">
<title>Welcome User</title>

<!-- Important Owl stylesheet -->
<link rel="stylesheet"
	href="http://cdnjs.cloudflare.com/ajax/libs/owl-carousel/1.3.2/owl.carousel.css">

<!-- Default Theme -->
<link rel="stylesheet"
	href="http://cdnjs.cloudflare.com/ajax/libs/owl-carousel/1.3.2/owl.theme.css">

<!--  jQuery 1.7+  -->
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

<!-- Include js plugin -->
<script
	src="http://cdnjs.cloudflare.com/ajax/libs/owl-carousel/1.3.2/owl.carousel.js"></script>

<script>
	$(document).ready(function() {
		$("#owl-demo").owlCarousel({
			/*loop : true,
			lazyLoad: true,
			items : 4,
			itemsDesktop : [ 1199, 3 ],
			itemsDesktopSmall : [ 979, 3 ]*/
			items : 4,
			loop : true,
			margin : 10,
			autoplay : true,
			autoplayTimeout : 1000,
			autoplayHoverPause : true

		});

	});
</script>
<style>
#owl-demo .item {
	margin: 3px;
}

#owl-demo .item img {
	display: block;
	width: auto; /*width : 100%*/
	height: 120px; /*height : auto*/
}
</style>
</head>
<body>
	<div id="owl-demo">
		<g:each in="${bookList}" var="book">
			<div class="item">
				<center>
					<img
						src="${createLink(controller: 'book', action: 'loadImg' , id : "${book.id}")}"
						alt="Owl Image"> <a
						href="${createLink(controller:'book',action:'open',id:"${book.id}") }">
						${book?.title}
					</a><br />
					${book?.author?.name}<br /> <b><del>&#2352;</del></b>&nbsp${book?.price}
				</center>
			</div>
		</g:each>
	</div>
	</div>
</body>
</html>
