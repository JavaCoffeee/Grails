<%@ page import="com.readersadda.www.Dealer" %>



<div class="fieldcontain ${hasErrors(bean: dealerInstance, field: 'user', 'error')} ">
	<label for="user">
		<g:message code="dealer.user.label" default="User" />
		
	</label>
	<g:select id="user" name="user.id" from="${com.readersadda.www.User.list()}" optionKey="id" required="" value="${dealerInstance?.user?.id}" class="many-to-one"/>

</div>

