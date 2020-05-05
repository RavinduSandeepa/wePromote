<%@page import="java.io.PrintWriter"%>
<%@page import="oop.service.impl.DeleteUser"%>
<%@page import="oop.service.impl.UpdateUser"%>
<%@page import="oop.model.User"%>
<%@page import="oop.service.impl.UserServiceImpl"%>
<%@page import="oop.service.UserService"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Edit Profile</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="
	sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="CSS/globel.css">
	
<style>
	body {
    background:url("Images/img6.jpg");
	background-repeat: no-repeat;
	background-attachment: fixed;
}
</style>

</head>
<body>

	<%
			String user_ID = (String)request.getParameter("user_ID");
			
			UpdateUser obj_Edit_values = new UpdateUser();
			User obj_User_Bean = obj_Edit_values.get_values_of_user(user_ID);
	
	
	%>

	<jsp:include page="/WEB-INF/views/Header.jsp"></jsp:include>
	<div class="raw">
	<section class="container-fluid">
		<section class="row justify-content-center">
			<section class="col-12 col-sm-6 col-md-3">
			
			<form class="form-container" action="UpdateUserServlet" method="post">
				<div class="form-group">
					<h3 class="text-center">Edit Profile</h3>
				</div>
				<div class="form-group">
						<label for="validationCustom01">User ID</label>
				      	<input type="text" class="form-control" id="validationCustom01" name="userid" value="<%=obj_User_Bean.getUser_ID() %>" required>
				  <div class="row">
				    <div class="col">
				      <label for="validationCustom01">First name</label>
				      <input type="text" class="form-control" id="validationCustom01" name="Fname" value="<%=obj_User_Bean.getF_name() %>" required>
				    </div>
				    <div class="col">
				      <label for="validationCustom02">Last name</label>
				      <input type="text" class="form-control" id="validationCustom02" name="Lname" value="<%=obj_User_Bean.getL_name() %>" required>
				    </div>
				  </div>
				  </div>
				  <fieldset>			
				  <div class="form-group">
				    <label for="exampleInputEmail1">Email address</label>
				    <input type="email" class="form-control" id="disabledTextInput" aria-describedby="emailHelp" name="email" value="<%=obj_User_Bean.getEmail()%>">
				    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
				  </div>
				  </fieldset>
				  <div class="form-group">
				    <label for="exampleInputPassword1">Old Password</label>
				    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Type Old Password">
				  </div>
				  <div class="form-group">
				    <label for="exampleInputPassword1">New Password</label>
				    <input type="password" class="form-control" id="exampleInputPassword1" name="pass" placeholder="Type New Password" required>
				  </div><br>
				  <div class="text-center form-group">
				  	<button type="submit" name="save" class="btn btn-primary btn-block">Submit</button>
				  </div>
			</form>
			
			</section>
		</section>
	</section>
	</div>

		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="
		sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="
		sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="
		sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

</body>
</html>