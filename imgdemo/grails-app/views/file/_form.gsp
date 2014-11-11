<%@ page import="imgdemo.File" %>



<div class="fieldcontain ${hasErrors(bean: fileInstance, field: 'filePayload', 'error')} ">
	<label for="filePayload">
		<g:message code="file.filePayload.label" default="File Payload" />
		
	</label>
	<input type="file" id="filePayload" name="filePayload" />

</div>

<div class="fieldcontain ${hasErrors(bean: fileInstance, field: 'fileType', 'error')} ">
	<label for="fileType">
		<g:message code="file.fileType.label" default="File Type" />
		
	</label>
	<g:textField name="fileType" value="${fileInstance?.fileType}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: fileInstance, field: 'fileName', 'error')} ">
	<label for="fileName">
		<g:message code="file.fileName.label" default="File Name" />
		
	</label>
	<g:textField name="fileName" value="${fileInstance?.fileName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: fileInstance, field: 'path', 'error')} required">
	<label for="path">
		<g:message code="file.path.label" default="Path" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="path" required="" value="${fileInstance?.path}"/>

</div>

