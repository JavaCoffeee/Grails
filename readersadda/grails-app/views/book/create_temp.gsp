<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName"
	value="${message(code: 'book.label', default: 'Book')}" />
<title><g:message code="default.create.label"
		args="[entityName]" /></title>

<asset:stylesheet src="jquery.steps.css" />
<asset:javascript src="jquery.steps.min.js" />

<asset:stylesheet src="themes/base/all.css"/>

<asset:javascript src="dialog/core.js"/>
<asset:javascript src="dialog/widget.js"/>
<asset:javascript src="dialog/mouse.js"/>
<asset:javascript src="dialog/button.js"/>
<asset:javascript src="dialog/draggable.js"/>
<asset:javascript src="dialog/position.js"/>
<asset:javascript src="dialog/resizable.js"/>
<asset:javascript src="dialog/dialog.js"/>
<asset:javascript src="dialog/effect.js"/>

<asset:stylesheet src="demos.css"/>

<style>
label, input {
	display: block;
}

input.text {
	margin-bottom: 12px;
	width: 95%;
	padding: .4em;
}

fieldset {
	padding: 0;
	border: 0;
	margin-top: 25px;
}

h1 {
	font-size: 1.2em;
	margin: .6em 0;
}

div#users-contain {
	width: 350px;
	margin: 20px 0;
}

div#users-contain table {
	margin: 1em 0;
	border-collapse: collapse;
	width: 100%;
}

div#users-contain table td, div#users-contain table th {
	border: 1px solid #eee;
	padding: .6em 10px;
	text-align: left;
}

.ui-dialog .ui-state-error {
	padding: .3em;
}

.validateTips {
	border: 1px solid transparent;
	padding: 0.3em;
}
</style>
<script>
	$(function() {
		var publisherDialog,dialog, form,
		// From http://www.whatwg.org/specs/web-apps/current-work/multipage/states-of-the-type-attribute.html#e-mail-state-%28type=email%29
		emailRegex = /^[a-zA-Z0-9.!#$%&'*+\/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$/, name = $("#name"), email = $("#email"), about = $("#about"), address = $("#address"), contact = $("#contact") ,allFields = $(
				[]).add(name).add(email).add(about).add(contact).add(address), tips = $(".validateTips");

		function updateTips(t) {
			tips.text(t).addClass("ui-state-highlight");
			setTimeout(function() {
				tips.removeClass("ui-state-highlight", 1500);
			}, 500);
		}

		function checkLength(o, n, min, max) {
			if (o.val().length > max || o.val().length < min) {
				o.addClass("ui-state-error");
				updateTips("Length of " + n + " must be between " + min
						+ " and " + max + ".");
				return false;
			} else {
				return true;
			}
		}

		function checkRegexp(o, regexp, n) {
			if (!(regexp.test(o.val()))) {
				o.addClass("ui-state-error");
				updateTips(n);
				return false;
			} else {
				return true;
			}
		}

		function addUser() {
			var valid = true;

			/*$("#users tbody").append(
					"<tr>" + "<td>" + name.val() + "</td>" + "<td>"
							+ address.val() + "</td>" + "<td>"
							+ contact.val() + "</td>" + "</tr>");
			*/
			$('#popupform').submit();
			dialog.dialog("close");
			return valid;
		}

		function addPublisher() {
			var valid = true;

			/*$("#users tbody").append(
					"<tr>" + "<td>" + name.val() + "</td>" + "<td>"
							+ address.val() + "</td>" + "<td>"
							+ contact.val() + "</td>" + "</tr>");
			*/
			$('#publisherform').submit();
			publisherDialog.dialog("close");
			return valid;
		}

		

		dialog = $("#dialog-form").dialog({
			autoOpen : false,
			height : 400,
			width : 350,
			modal : true,
			buttons : {
				"Add Author" : addUser,
				Cancel : function() {
					dialog.dialog("close");
				}
			},
			close : function() {
				form[0].reset();
				allFields.removeClass("ui-state-error");
			}
		});

		publisherDialog = $("#publisher-dialog-form").dialog({
			autoOpen : false,
			height : 400,
			width : 350,
			modal : true,
			buttons : {
				"Add Publisher" : addPublisher,
				Cancel : function() {
					publisherDialog.dialog("close");
				}
			},
			close : function() {
				form[0].reset();
				allFields.removeClass("ui-state-error");
			}
		});

		/*form = dialog.find("form").on("submit", function(event) {
			event.preventDefault();
			addUser();
		});*/

		$("#create-user").button().on("click", function() {
			dialog.dialog("open");
		});

		$("#create-publisher").button().on("click", function() {
			publisherDialog.dialog("open");
		});
	});
	
</script>

</head>
<body>
	<ol class="breadcrumb">
		<li><a href="#">Add Book</a></li>
	</ol>
	<div class="panel panel-default">
		<div class="panel body">
			<g:if test="${flash.message}">
				<div class="message" role="status">
					${flash.message}
				</div>
			</g:if>
			<g:hasErrors bean="${bookInstance}">
				<div class="form-group col-sm-offset-2 col-sm-8">
					<ul role="alert">
						<g:eachError bean="${bookInstance}">
							<li class="text-danger"><g:message error="${it}" /></li>
						</g:eachError>
					</ul>
				</div>
			</g:hasErrors>
			
			<button id="create-user">Create new Author</button>
			<button id="create-publisher">Create Publisher</button>
			
			<g:form url="[resource:bookInstance, action:'save']"
				enctype="multipart/form-data" class="form-horizontal">
				<fieldset class="form">
					<g:render template="form" />
				</fieldset>
				<fieldset class="buttons">
					<div class="form-group">
						<div class="col-sm-offset-3 col-sm-3">
							<g:submitButton name="create" class="save"
								class="btn btn-default"
								value="${message(code: 'default.button.create.label', default: 'Create')}" />
						</div>
					</div>
				</fieldset>
			</g:form>
		</div>
	</div>
	

	<div id="dialog-form" title="Create new Author">
		<g:form url="[controller:'author',resource:authorInstance,action:'popup_save']" id="popupform">
			<fieldset>
				<label for="name">Name</label><input type="text" id="name" name="name" value="${authorInstance?.name}">
				<label for="address">Address</label><input type="text" id="address" name="address" value="${authorInstance?.address}">
				<label for="contactno">Contact</label><input type="text" id="contact" name="contact" value="${authorInstance?.contact}">
				<label for="email">Email</label><input type="text" id="email" name="email" value="${authorInstance?.email}">
				<label for="about">About</label><input type="text" id="about" name="about" value="${authorInstance?.about}">
				<input type="button" tabindex="-1"
					style="position: absolute; top: -1000px">				
			</fieldset>
		</g:form>
			
	</div>
	
	<div id="publisher-dialog-form" title="Create new Publisher">
		<g:form url="[controller:'publisher',resource:publisherInstance,action:'popup_save']" id="publisherform">
			<fieldset>
				<label for="name">Name</label><input type="text" id="name" name="name" value="${publisherInstance?.name}">
				<label for="publishDate">Date</label><!-- <input type="date" id="publishDate" name="publishDate" value="${publisherInstance?.publishDate}">--><g:datePicker name="publishDate" precision="day" value="${publisherInstance?.publishDate}" />
				<label for="about">About</label><input type="text" id="about" name="about" value="${publilsherInstance?.about}">
				<input type="button" tabindex="-1"
					style="position: absolute; top: -1000px">				
			</fieldset>
		</g:form>
			
	</div>

	<%--<div id="users-contain" class="ui-widget">
		<h1>Existing Authors:</h1>
		<table id="users" class="ui-widget ui-widget-content">
			<thead>
				<tr class="ui-widget-header ">
					<th>Name</th>
					<th>Email</th>
					<th>Password</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>John Doe</td>
					<td>john.doe@example.com</td>
					<td>johndoe1</td>
				</tr>
			</tbody>
		</table>
	</div>
--%></body>
</html>