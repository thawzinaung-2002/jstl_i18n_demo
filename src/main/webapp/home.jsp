<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
   
<c:set var="theLocale" 
		value="${not empty param.theLocale? param.theLocale : pageContext.request.locale }" 
		scope="session" /> 

<fmt:setLocale value="${theLocale }" />
<fmt:setBundle basename="com.jstl_lang_app.languages.labels" /> 
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>
</head>
<body>

	<form action="home-process.jsp">
		<h2>
			<fmt:message key="label.header" />
		</h2>
		<fmt:message key="label.firstName"></fmt:message>
		<input type="text" name="firstName" /> <br/><br/>
		<fmt:message key="label.lastName" />
		<input type="text" name="lastName" /> <br/><br/>
		<fmt:message key="label.email" />
		<input type="email" name="email" /> <br/><br/>
		<fmt:message key="label.password" />
		<input type="password" name="password" /> <br/><br/>
		
		<c:set var="submit" scope="page">
			<fmt:message key="label.submit" />
		</c:set>
		<input type="submit" value="${submit}">
	</form>
	<br/><br/>
	<a href="home.jsp?theLocale=en_US">English</a> |
	<a href="home.jsp?theLocale=my_MM">Burmese</a> |
	<a href="home.jsp?theLocale=ko_KR">Korean</a> |
	<a href="home.jsp?theLocale=es_ES">Spain</a> 

</body>
</html>