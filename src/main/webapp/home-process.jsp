<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<fmt:setLocale value="${sessionScope.theLocale }" />
<fmt:setBundle basename="com.jstl_lang_app.languages.labels" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Show Info</title>
</head>
<body>

	<h2>
		<fmt:message key="label.greeting" />, <fmt:message key="label.welcome"/>
	</h2>
	<p>
		<fmt:message key="label.firstName" /> : 
		
		
		
		<br/></br>
		<fmt:message key="label.lastName" /> : ${param.lastName}<br/></br>
		<fmt:message key="label.email" /> : ${param.email}<br/></br>
		<fmt:message key="label.password" /> : ${param.password}<br/></br>
	</p>
	
	<a href="home.jsp">Go to Home</a>

</body>
</html>