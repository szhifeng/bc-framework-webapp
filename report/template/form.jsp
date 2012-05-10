<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<div title='<s:text name="reportTemplate.title"/>' data-type='form' class="bc-page"
	data-saveUrl='<s:url value="/bc/reportTemplate/save" />'
	data-js='<s:url value="/bc/report/template/form.js" />,js:bc_identity,<s:url value="/bc/report/reportForm.css" />'
	data-initMethod='bc.reportTemplateForm.init'
	data-option='<s:property value="formPageOption"/>' style="overflow-y:auto;">
	<s:form name="reportTemplateForm" theme="simple" >
		<table  cellspacing="2" cellpadding="0" style="width:645px;"  >
			<tbody>
				<tr class="widthMarker">
					<td style="width: 80px;"></td>
					<td >&nbsp;</td>
				</tr>
				<!-- 名称 所属分类 -->
				<tr>
					<td class="label">*<s:text name="reportTemplate.name"/>:</td>
					<td class="value"><s:textfield name="e.name" cssClass="ui-widget-content" data-validate="required" /></td>
				</tr>
				<tr>
					<td class="label">*<s:text name="reportTemplate.category"/>:</td>
					<td class="value"><s:textfield name="e.category" cssClass="ui-widget-content" data-validate="required" /></td>
				</tr>
				<!-- 编码 排序号 -->
				<tr>
					<td class="label">*<s:text name="reportTemplate.code"/>:</td>
					<td class="value"><s:textfield name="e.code" cssClass="ui-widget-content" data-validate="required" /></td>
				</tr>
				<tr>	
					<td class="label"><s:text name="reportTemplate.order"/>:</td>
					<td class="value"><s:textfield name="e.orderNo" cssClass="ui-widget-content" /></td>
				</tr>
				<!-- 使用人-->
				<tr>
					<td class="topLabel">*<s:text name="reportTemplate.user"/>:</td>
					<td class="value relative" >
						<div id="assignUsers" style="position:relative;margin: 0;padding: 1px 0;min-height:19px;margin: 0;font-weight: normal;width: 98%;" class="ui-widget-content" 
							data-removeTitle='<s:text name="title.click2remove"/>'>
							<ul class="inputIcons" style="top:10px">
								 	<li class="inputIcon ui-icon ui-icon-circle-plus" title='<s:text name="group.title.click2addUsers"/>' id="addUsers">
								 	<li class="inputIcon ui-icon ui-icon-circle-plus" title='<s:text name="actor.title.click2addGroups"/>' id="addGroups">
								 	<li class="inputIcon ui-icon ui-icon-circle-plus" title='<s:text name="reportTemplate.title.addUnitOrDepartment"/>' id="addUnitOrDepartments">
							</ul>
							<s:if test="%{ownedUsers != null && !ownedUsers.isEmpty()}">
								<ul class="horizontal reportUserUl" style="padding: 0 50px 0 0;">
								<s:iterator value="ownedUsers">
								<li class="horizontal reportUserLi" style="position: relative;margin:0 2px;float: left;padding: 0;"
									data-id=<s:property value="['id']"/>>
								<span class="text" ><s:property value="['name']" /></span>
								<s:if test="!isReadonly()">
									<span class="click2remove verticalMiddle ui-icon ui-icon-close" style="margin: -8px -2px;" title='<s:text name="title.click2remove"/>'></span>
								</s:if>
								</li>
								</s:iterator>
								</ul>
							</s:if>	
						</div>					
					</td>
				</tr>
				<!-- 备注-->
				<tr>
					<td class="topLabel">备注:</td>
					<td class="value" >
						<s:textarea rows="3" name="e.desc"  cssClass="ui-widget-content noresize" />
					</td>
				</tr>
				<tr>
					<td class="label" colspan="2"><s:text name="reportTemplate.status"/>:<s:radio name="e.status" list="#{'0':'启用','1':'禁用'}" cssStyle="width:auto;"/></td>
				</tr>
				<!-- 详细配置-->
				<tr>
					<td class="topLabel"><s:text name="reportTemplate.config"/>:</td>
					<td class="value" colspan="3">
						<div id="reportTemplateConfig" class="test_box ui-widget-content" contenteditable="true">
							<s:if test="e.isNew()">
							</s:if><s:else>
								<s:text name="e.config"/>
							</s:else>
						</div>
						<%-- <s:textarea name="e.config"  cssClass="ui-widget-content noresize" /> --%>
					</td>
				</tr>
				
				<tr>
					<td class="label" colspan="4">
						<div class="formTopInfo">
							创建：<s:property value="e.author.name" />(<s:date name="e.fileDate" format="yyyy-MM-dd HH:mm:ss"/>)
							<s:if test="%{e.modifier != null}">
							最后修改：<s:property value="e.modifier.name" />(<s:date name="e.modifiedDate" format="yyyy-MM-dd HH:mm:ss"/>)
							</s:if>
						</div>
					</td>
				</tr>		
			</tbody>
		</table>
		<s:hidden name="e.id" />
		<s:hidden name="e.author.id" />
		<s:hidden name="assignUserIds" />
		<s:hidden name="e.config"/>
		<input type="hidden" name="e.fileDate" value='<s:date format="yyyy-MM-dd HH:mm:ss" name="e.fileDate" />'/>
	</s:form>
</div>