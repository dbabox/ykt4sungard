<%@ page import="java.net.URLEncoder" %>
<%@page pageEncoding="GBK"%>
<%@ include file="../tiles/include.jsp"%>
<center>
	<bean:define id="title">
		<bean:message bundle="security" key="security.title" />
	</bean:define>
	<bean:define id="accountTitle">
		<bean:message bundle="security" key="security.account" />
	</bean:define>
	<bean:define id="roleTitle">
		<bean:message bundle="security" key="security.role" />
	</bean:define>
	<bean:define id="resourceTitle">
		<bean:message bundle="security" key="security.resource" />
	</bean:define>

	<gui:window title="<%=title%>" prototype="boWindow" color="100%">
		<gui:tabbedPanel prototype="boTabbedPanel" followUp="usermanag.jsp" color="#f0f0f0" selectedTab="tab1" width="60">
			<bean:define id="tab1_title">
				<bean:message bundle="security" key="account.list" />
			</bean:define>
			<gui:tab prototype="boTab" name="tab1" title="<%=accountTitle%>" followUp="accountSecurityManager.do?method=searchAccount">

				<table class="win" CELLPADDING="2" CELLSPACING="0" width="100%">
					<html:form action="accountSecurityManager.do?method=searchAccount">
						<tr align="right">
							<td>
                                <bean:message bundle="security" key="person.code" />
								<input type="text" name="stuempno" value="<c:out value="${stuempno}"/>">
								<bean:message bundle="security" key="person.name" />
								<input type="text" name="custname" value="<c:out value="${custname}"/>">
                                <bean:message bundle="security" key="person.dept" />
                                <select name="deptcode" value="<c:out value="${deptcode}"/>">
                                    <option value="">��ѡ��</option>
                                    <logic:present name="departments" scope="request">
                                        <logic:iterate name="departments" id="dept" indexId="i">
                                            <c:choose>
                                                <c:when test="${deptcode==dept.deptcode}">
                                                    <option value="<bean:write name="dept" property="deptcode" />" selected="selected"><bean:write name="dept" property="deptTitle" /></option>
                                                </c:when>
                                                <c:otherwise>
                                                    <option value="<bean:write name="dept" property="deptcode" />"><bean:write name="dept" property="deptTitle" /></option>
                                                </c:otherwise>
                                            </c:choose>
                                        </logic:iterate>
									</logic:present>
                                </select>
								<html:submit styleClass="button">
									<bean:message key="button.search" />
								</html:submit>
							</td>
						</tr>
				</table>
				</html:form>
				<html:form action="accountManager.do">
					<input type="hidden" name="method" value="searchAccount">
					<input type="hidden" name="opType" value="add">
					<table class="sort-table" cellSpacing="1" cellPadding="1" width="100%" border="0">
						<thead>
							<tr>
								<td COLSPAN="7">
									<bean:message bundle="security" key="person.list" />
								</td>
							</tr>
						</thead>
						<logic:present name="accounts" scope="request">
							<thead>
								<tr>
									<td>
										<bean:message bundle="security" key="person.code" />
									</td>
									<td>
										<bean:message bundle="security" key="person.name" />
									</td>
									<td>
										<bean:message bundle="security" key="person.dept" />
									</td>
								</tr>
							</thead>

							<!--page offset start -->
							<pg:pager url="./accountSecurityManager.do" items="<%=((Integer)request.getAttribute("accountCount")).intValue()%>" index="center" maxPageItems="10" maxIndexPages="10" isOffset="<%= true %>" export="offset,currentPageNumber=pageNumber" scope="request">
								<%-- keep track of preference --%>
								<pg:param name="para" />
                                <pg:param name="stuempno" />
                                <pg:param name="deptcode" />
								<pg:param name="custname" value="<%=request.getAttribute("custname")==null?"":URLEncoder.encode((String)request.getAttribute("custname"))%>"/>
								<pg:param name="page" />
								<pg:param name="orderby" />
								<pg:param name="sort" />
								<pg:param name="method" />

								<%-- save pager offset during form changes --%>
								<input type="hidden" name="pager.offset" value="<%= offset %>">
								<logic:iterate name="accounts" id="account" indexId="i">
									<pg:item>
										<tr>
											<td>
												<%--<input type="checkbox" name="id" value="<bean:write  name="account" property="id" />">--%>
												<%--<bean:write name="account" property="name" />--%>
                                                <bean:write name="account" property="stuempno" />
											</td>
											<td>
												<a href="accountSecurityManager.do?method=loadAccountRole4Grant&id=<bean:write  name="account" property="id" />&offset=<%= offset %>&opType=edit"> <bean:write name="account" property="custname" /> </a>
											</td>
											<td>
												<%--<bean:write name="account" property="person.dept" />--%>
                                                <bean:write name="account" property="deptname" />
											</td>
										</tr>
									</pg:item>
								</logic:iterate>
					</table>
					<jsp:include page="./page.jsp" flush="true" />
					</pg:pager>
					<!-- page offset end -->
					</logic:present>
					<br>

					<logic:notPresent name="accounts" scope="request">
						<tr>
							<td COLSPAN="3">
								<bean:message bundle="security" key="account.noRecord" />
							</td>
						</tr>
					</logic:notPresent>
				</html:form>

			</gui:tab>
			<gui:tab prototype="boTab" name="tab2" title="<%=roleTitle%>" followUp="roleManager.do?method=loadRole">
              role
            </gui:tab>
            <gui:tab prototype = "boTab" name = "tab3" title = "<%=resourceTitle%>" followUp="resourceManager.do?method=loadResource">
              resource
            </gui:tab>
		</gui:tabbedPanel>
	</gui:window>
</center>

<script language="JavaScript">

 function chgAction(obj,str){
	obj.value=str;
 }

</script>