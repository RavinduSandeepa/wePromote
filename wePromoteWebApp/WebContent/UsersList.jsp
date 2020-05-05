<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="oop.model.User"%>
<%@page import="java.util.ArrayList"%>
<%@page import="oop.service.impl.UserServiceImpl"%>
<%@page import="oop.service.UserService"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
		<meta charset="ISO-8859-1">
		<title>User List</title>
		<link rel="stylesheet"
			  href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
			  integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
			  crossorigin="anonymous">
			  
			    			<script>
								function confirmf() {
							    	if (confirm('Do you want to Delete this record?')) {
							    		return true;
									} else {
							   			return false;
									}
							    }
								
								function editConfirm() {
							    	if (confirm('Do you want to Update this record?')) {
							    		return true;
									} else {
							   			return false;
									}
							    }
							</script>
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
	<br>

	<div class="row">
		<!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

		<div class="container">
			<h3 class="text-center">List of Users</h3>
			<hr>
			<div class="container text-left">

				<a href="" class="btn btn-success">Add
					New User</a>
			</div>
			<br>
			
			<%
				UserService service = new UserServiceImpl();
			
				List<User> list = service.getAllUsers();
				
				Iterator<User> it_list = list.iterator();
			
			
			%>
			
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>ID</th>
						<th>First Name</th>
						<th>Last Name</th>
						<th>Email</th>
						<th>Actions</th>
					</tr>
				</thead>
				
				<%
					while(it_list.hasNext()){
						User obj_User_Bean = new User();
						obj_User_Bean = it_list.next();
					
				
				
				%>
				<tbody>
					
						<tr>
							<td><%=obj_User_Bean.getUser_ID() %></td>
							<td><%=obj_User_Bean.getF_name() %></td>
							<td><%=obj_User_Bean.getL_name() %></td>
							<td><%=obj_User_Bean.getEmail() %></td>
							<td>
								<a onclick="return editConfirm()" href="EditProfile.jsp?user_ID=<%=obj_User_Bean.getUser_ID() %>">Edit</a>&nbsp;&nbsp;&nbsp;&nbsp; 
								<a onclick="return confirmf()" href="Controller/delete_controller.jsp?DeleteUser_ID=<%=obj_User_Bean.getUser_ID() %>">Delete</a>
							</td>
						</tr>
					<!-- } -->
				</tbody>
				<%} %>
			</table>
		</div>
	</div>

</body>
</html>