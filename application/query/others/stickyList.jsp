<%@ taglib uri="struts-logic" prefix="logic" %>
<%@ taglib uri="struts-bean" prefix="bean" %>
<%@ taglib uri="struts-html" prefix="html" %>
<%@ page contentType="text/html; charset=utf-8" %>
<%@ page session="false" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%          
    com.jdon.jivejdon.util.ToolsUtil.setHeaderCache(5 * 24 * 60 * 60, request, response);
%>
   <bean:parameter id="count" name="count" value="8"/>
      <%
String coutlength = (String)pageContext.getAttribute("count");
String domainUrl = com.jdon.util.RequestUtil.getAppURL(request);
%>
      <logic:iterate indexId="i"   id="forumThread" name="threadListForm" property="list" length='<%=coutlength%>' >
		  <li><a class="smallgray" href="<%=domainUrl%><%=request.getContextPath()%>/<bean:write name="forumThread" property="threadId"/>"  target="_blank"><bean:write name="forumThread" property="name" /></a>
			  </li>
      </logic:iterate>
</div>
