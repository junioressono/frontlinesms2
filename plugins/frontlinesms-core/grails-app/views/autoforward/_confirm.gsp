<div class="input">
	<label for="name"><g:message code="autoforward.name.prompt"/></label>
	<g:textField name="name" value="${activityInstanceToEdit?.name}"/>
</div>
<div class="confirm">
	<h2><g:message code="autoforward.details.label"/></h2>
	<table>
		<tr>
			<td><g:message code="autoforward.keyword.label"/></td>
			<td id="keyword-confirm"/>
		</tr>
		<tr>
			<td><g:message code="autoforward.name.label"/></td>
			<td id="autoforward-confirm-messagetext"/>
		</tr>
		<tr>
			<td><g:message code="autoforward.contacts"/></td>
			<td id="autoforward-confirm-contacts"/>
		</tr>
		<tr>
			<td><g:message code="autoforward.groups"/></td>
			<td id="autoforward-confirm-groups"/>
		</tr>
	</table>
</div>

