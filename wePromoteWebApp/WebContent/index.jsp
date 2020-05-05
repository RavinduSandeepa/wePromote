<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<title>wePromote HomePage</title>
	<head>
		<meta charset="ISO-8859-1">

	</head>
<body>

	<%
		
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
	
		response.setHeader("Pragma", "no-cache");
		
		response.setHeader("Expires", "0");
	
	
		if(session.getAttribute("uEmail") == null)
		{
			response.sendRedirect("SignUp_Login.jsp");
		}
	
	%>

	<jsp:include page="/WEB-INF/views/Header.jsp"></jsp:include>
	<h1>welcome to wePromote.com</h1>
	
	And Welcome ${uEmail}
	
	<br>
	<a href="UsersList.jsp">Admin</a>

</body>
</html>