<%@ taglib prefix = "form" uri = "http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "security" uri = "http://www.springframework.org/security/tags" %>


<html>
<head>
<title>Spring Security</title>
</head>

<body>
<h2>

Welcome to the HomePage Tejas Shelke gone.
</h2>
<hr>
User: <security:authentication property  = "principal.username"/>
<br><br>
Reole: <security:authentication property  = "principal.authorities"/>
<hr>


<security:authorize access="hasRole('MANAGER')">
<!-- Manager -->
<p>
<a href = "${pageContext.request.contextPath}/leaders">Leadership Meeting</a>
(Only for manager)
</p>

</security:authorize>


<!-- Administrator -->
<security:authorize access="hasRole('ADMIN')">

<p>
<a href = "${pageContext.request.contextPath}/systems">IT SYSTEMS Meeting</a>
(Only for Admins)
</p>

</security:authorize>

<form:form action ="${pageContext.request.contextPath }/logout" method = "POST">

<input type="submit" value="Logout" />

</form:form>
</body>
</html>