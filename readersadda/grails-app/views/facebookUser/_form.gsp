<%@ page import="com.readersadda.www.FacebookUser" %>



<div class="fieldcontain ${hasErrors(bean: facebookUserInstance, field: 'accessToken', 'error')} ">
	<label for="accessToken">
		<g:message code="facebookUser.accessToken.label" default="Access Token" />
		
	</label>
	<g:textField name="accessToken" value="${facebookUserInstance?.accessToken}" />

</div>

<div class="fieldcontain ${hasErrors(bean: facebookUserInstance, field: 'accessTokenExpires', 'error')} ">
	<label for="accessTokenExpires">
		<g:message code="facebookUser.accessTokenExpires.label" default="Access Token Expires" />
		
	</label>
	<g:datePicker name="accessTokenExpires" precision="day" value="${facebookUserInstance?.accessTokenExpires}" />

</div>

<div class="fieldcontain ${hasErrors(bean: facebookUserInstance, field: 'uid', 'error')} ">
	<label for="uid">
		<g:message code="facebookUser.uid.label" default="Uid" />
		
	</label>
	<g:field type="number" name="uid" value="${facebookUserInstance.uid}" />

</div>

