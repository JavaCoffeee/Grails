<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html lang="en" class="no-js">
<!--<![endif]-->
<head>
<meta name="layout" content="main">
<title>Title</title>

<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script
	src="http://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.13.1/jquery.validate.min.js"></script>

<asset:stylesheet src="normalize.css" />
<asset:stylesheet src="jquery.steps.main.css" />

<asset:stylesheet src="jquery.steps.css" />
<asset:javascript src="jquery.steps.min.js" />

</head>
<body>
	<form id="example-form" action="#">
		<div>
			<h3>Author</h3>
			<section>
				<%--<label for="userName">User name *</label> <input id="userName"
					name="userName" type="text" class="required"> <label
					for="password">Password *</label> <input id="password"
					name="password" type="text" class="required"> <label
					for="confirm">Confirm Password *</label> <input id="confirm"
					name="confirm" type="text" class="required">
				<p>(*) Mandatory</p>
			--%>
			<g:render template="/book/index"></g:render>
			</section>
			<h3>Publisher</h3>
			<section>
				<label for="name">First name *</label> <input id="name" name="name"
					type="text" class="required"> <label for="surname">Last
					name *</label> <input id="surname" name="surname" type="text"
					class="required"> <label for="email">Email *</label> <input
					id="email" name="email" type="text" class="required email">
				<label for="address">Address</label> <input id="address"
					name="address" type="text">
				<p>(*) Mandatory</p>
			</section>
			<h3>Book</h3>
			<section>
				<ul>
					<li>Foo</li>
					<li>Bar</li>
					<li>Foobar</li>
				</ul>
			</section>
			<h3>Finish</h3>
			<section>
				<input id="acceptTerms" name="acceptTerms" type="checkbox"
					class="required"> <label for="acceptTerms">I agree
					with the Terms and Conditions.</label>
			</section>
		</div>
	</form>
	<script>
		var form = $("#example-form");
		form.validate({
			errorPlacement : function errorPlacement(error, element) {
				element.before(error);
			},
			rules : {
				confirm : {
					equalTo : "#password"
				}
			}
		});
		form.children("div").steps({
			headerTag : "h3",
			bodyTag : "section",
			transitionEffect : "slideLeft",
			onStepChanging : function(event, currentIndex, newIndex) {
				form.validate().settings.ignore = ":disabled,:hidden";
				return form.valid();
			},
			onFinishing : function(event, currentIndex) {
				form.validate().settings.ignore = ":disabled";
				return form.valid();
			},
			onFinished : function(event, currentIndex) {
				alert("Submitted!");
			}
		});
	</script>
</body>
</html>