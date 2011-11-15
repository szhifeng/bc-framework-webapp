<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<div title='<s:text name="chat.online.title"/>' data-type='form'
	class="bc-page online"
	data-js='<s:url value="/bc/chat/online.css" />,<s:url value="/bc/chat/online.js" />'
	data-initMethod='bc.online.init' data-option='{"width":350,"height":400}'
	style="overflow: hidden;">
	<div class='container'>
		<div class="title">在线用户：</div>
		<ul class="items">
			<s:iterator var="u" value="users">
				<li class="item ui-corner-all ui-state-default"
					data-id='<s:property value="id"/>' data-user='<s:property value="json"/>'>
					<img style=""
						src='<s:url value="/bc/image/download"><s:param name='puid' value='uid'/><s:param name='ptype' value='%{"portrait"}'/><s:param name='ts' value='ts'/></s:url>' />
					<span class="text"><s:property value="fullName" />
				</span></li>
			</s:iterator>
		</ul>
	</div>
</div>