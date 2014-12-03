<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="layout" content="main" />
<title>Dealer</title>
<script src="custom.css"></script>
<script>
	function ajaxCall() {
		var email = $('#email').val();
		var div = document.getElementById("information");
		$.ajax({
			url : "verifyEmail",
			data : {
				value : email
			},
			success : function(data) {
				if (data.email == null) {
					div.innerHTML = "You are not registered as user";
					$('#ap_signin_create_radio').prop('checked', true);
					$("#ap_password").prop("disabled", true);
				} else {
					div.innerHTML = "You are registered as user";
					$('#ap_signin_existing_radio').prop('checked', true);
					$("#ap_password").prop("disabled", false);
				}
			},
			error : function(XMLHttpRequest, textStatus, errorThrown) {
				console.log("error :" + XMLHttpRequest.responseText);
			}
		});
	}

	function enablePasswordField() {
		$("#ap_password").prop("disabled", false);
	}

	function disablePasswordField() {
		$("#ap_password").prop("disabled", true);
	}

	function registration() {
		var radioBtnVal = $('input[name=create]:checked').val();
		if (radioBtnVal == 1) {
			$('#tmp').val("newuser");
		} else {
			$('#tmp').val("registereduser");
		}
	}
</script>
</head>
<body>
	<div id="signin-slot">
		<div id="ap_signin1a_pagelet" class="ap_table ap_pagelet">
			<div id="ap_signin1a_pagelet_title" class="ap_row ap_pagelet_title">
				<h1 id="applycolor">Register and Start Selling Today</h1>
			</div>
			<div id="ap_signin1a_email_section_title"
				class="ap_row ap_section_title">
				<h2 id="applycolor">What is your e-mail address?</h2>
			</div>

			<div id="ap_signin1a_email_row" class="ap_row">
				<%--<g:form url="[controller:'user', action:'signUp']" method="POST" id="myform">									
				--%>
				<g:form method="POST" id="myform"
					url="[controller:'dealer',action:'redirectToDealerRegistration']">
					<span class="ap_col1 ap_bold ap_right ap_no_collapse"> <label
						for="ap_email"> My e-mail address is: </label>
					</span>

					<span class="ap_col2 ap_left"><g:textField name="email"
							id="email" onChange="ajaxCall()" /></span>

					<div id="ap_signin1a_password_section_title"
						class="ap_row ap_section_title">
						<h2 id="applycolor">Do you want to use an existing
							readersadda.com account or complete a previous registration?</h2>
					</div>

					<div id="ap_signin1a_new_cust_radio_row" class="ap_row">
						<span id="" class="ap_col1 ap_right ap_no_collapse"> <input
							id="ap_signin_create_radio" type="radio" tabindex="6" value="1"
							name="create" onclick="disablePasswordField()">
						</span> <span id="" class="ap_col2 bold ap_radio_label"> <label
							for="ap_signin_create_radio">Create a new account</label>
						</span>
					</div>

					<div id="ap_signin1a_exist_cust_radio_row" class="ap_row">
						<span class="ap_col1 ap_right"> <input
							id="ap_signin_existing_radio" type="radio" checked="checked"
							tabindex="7" value="0" onclick="enablePasswordField()"
							name="create">
						</span> <span class="ap_col2 bold ap_radio_label"> <label
							for="ap_signin_existing_radio"> Use an existing account,
								<br> and my password is:
						</label>
						</span>
					</div>

					<div id="ap_signin1a_password_row" class="ap_row">
						<span class="ap_col1"> </span> <span class="ap_col2"> <input
							id="ap_password" class="password" type="password"
							onkeypress="displayCapsWarning(event,'ap_caps_warning', this);"
							tabindex="2" size="20" maxlength="1024" name="password">
						</span> <span id="ap_caps_warn_span">
							<div id="ap_caps_warning" class="ap_caps_warn ap_col3_caps_warn"
								style="visibility: hidden;">
								<b>Caps Lock is on.</b> <font color="black"> This may
									cause you <br> to enter your password incorrectly.
								</font>
							</div>
						</span>
					</div>

					<div id="ap_small_forgot_password_link">
						<span id="ap_small_forgot_password_span" class="small"> <a
							href="https://sellercentral.amazon.in/ap/forgotpassword?openid.pape.max_auth_age=0&openid.ns=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0&openid.ns.pape=http%3A%2F%2Fspecs.openid.net%2Fextensions%2Fpape%2F1.0&prevRID=1CFVP8D5J1NSK4JQ1Z2Q&pageId=soa&openid.identity=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&openid.claimed_id=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&openid.mode=checkid_setup&openid.assoc_handle=amzn_urp_in&openid.return_to=https%3A%2F%2Fsellercentral.amazon.in%2Fgp%2Fon-board%2Fworkflow%2FRegistration%2Flogin.html%3Fie%3DUTF8%26isAuthPortalRedirected%3D1%26passthrough%252F%3D%26passthrough%252Faccount%3Dsoa%26passthrough%252Fld%3DAWRGINSOAfooter%26passthrough%252FmarketplaceID%3DA21TJRUUN4KGV%26passthrough%252FsuperSource%3DOAR"></a>
						</span>
					</div>
					<div id="ap_signin1a_signin_button_row" class="ap_row">
						<span class="ap_col1"> </span> <span class="ap_col2"> <span
							id="signInSubmit" class="in-amzn-btn btn-prim-med-ra"
							unselectable="on"> <span> <input
									id="signInSubmit-input" type="submit" tabindex="5"
									value="Continue" onclick="registration()">
							</span>
						</span>
						</span>
					</div>
					<input type="hidden" name="tmp" id="tmp">
				</g:form>
			</div>
		</div>
		<div id="information"></div>
	</div>
</body>
</html>