<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<html>
<head>
<link href="<s:url value='/css/main.css'/>" rel="stylesheet"
	type="text/css" />
<style>
td {
	white-space: nowrap;
}
</style>
<title><s:property value="#title" /></title>
</head>
<body>
<s:form action="setLastUsedProject" method="post">
			<s:if test="lastUsedProject!=null && lastUsedProject!=''">
			Selected project:
			<s:property value="lastUsedProject" />
		</s:if>
		<s:else>
			Please select project:
			<s:select name="lastUsedProject" value="%{Projects.Id}" list="Projects"
				listKey="Id" listValue="Name" />
		</s:else>
		<s:submit value="continue" />
	</s:form>
</body>
</html>