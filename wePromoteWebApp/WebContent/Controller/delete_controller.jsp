<%@page import="oop.service.impl.DeleteUser"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%
		String deleteUser_ID = request.getParameter("DeleteUser_ID");
	
		DeleteUser obj_delete_user = new DeleteUser();
		boolean isDeleted = obj_delete_user.delete_value(deleteUser_ID);

		if(isDeleted == true){
			System.out.println("Successful");
		}
		else
			System.out.println("UnSuccessful");

	%>
		<script type="text/javascript">

			window.location.href = "/wePromoteWebApp/UsersList.jsp"

		</script>


</body>
</html>