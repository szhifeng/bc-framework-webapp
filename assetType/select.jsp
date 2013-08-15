<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<div class="bc-page" title='<s:text name="assetType.title.select"/>'
	data-type='dialog' data-initMethod='bc.selectAssetTypeDialog.init'
	data-js='<s:url value="/bc/assetType/select.js" />'
	data-option='{
		"buttons":[{"text":"<s:text name="label.ok"/>","click":"bc.selectAssetTypeDialog.clickOk"}],
		"width":300,"height":320,"modal":true
	}'>
	<div style="margin: 4px;">
		<s:select list="es" listKey="id" listValue="name" theme="simple"
			size="10" cssStyle="width:100%;height:100%;" value="selected"
			multiple="%{multiple}" name="es"></s:select>
	</div>
</div>

