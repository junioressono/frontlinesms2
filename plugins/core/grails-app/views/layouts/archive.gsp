<%@ page contentType="text/html;charset=UTF-8" %>
<html>
	<head>
		<title><g:layoutTitle default="Archive"/></title>
		<g:layoutHead />
		<r:require module="archive"/>
		<g:render template="/includes" plugin="core"/>
		<fsms:i18n keys="popup.cancel, popup.back, wizard.cancel, wizard.back, wizard.next, smallpopup.cancel, smallpopup.empty.trash.prompt"/>
		<g:javascript>
			$(function() {  
			   disablePaginationControls();
			});
		</g:javascript>
	</head>
	<body id="archive-tab">
		<div id="header">
			<div id="notifications">
				<g:render template="/system_notifications" plugin="core"/>
				<g:render template="/flash" plugin="core"/>
			</div>
			<g:render template="/system_menu" plugin="core"/>
			<g:render template="/tabs" plugin="core"/>
        </div>
		<div id="main" class="main">
			<g:render template="../archive/menu" plugin="core"/>
			<div id="content">
				<div id="message-list" class="${(messageSection == 'inbox' || messageSection == 'sent' || messageSection == 'pending' || messageSection == 'trash' || messageSection == 'radioShow' || messageSection == 'folder' || params.action == 'no_search') ? '' : 'tall-header'}">
					<g:if test="${viewingMessages}">
						<g:render template="../message/header" plugin="core"/>
					</g:if>
					<g:else>
						<g:render template="header" plugin="core"/>
					</g:else>
					<g:if test="${(messageSection == 'activity') && !viewingMessages}">
						<g:render template="archived_activity_list" plugin="core"/>
					</g:if>
					<g:elseif test="${messageSection == 'folder' && !viewingMessages}">
						<g:render template="archived_folder_list" plugin="core"/>
					</g:elseif>
					<g:else>
						<g:render template="../message/message_list" plugin="core"/>
					</g:else>
					<g:layoutBody />
					<g:render template="../message/footer" plugin="core"/>
				</div>
				<g:render template="../message/message_details" plugin="core" />
			</div>
		</div>
		<r:layoutResources/>
	</body>
</html>
