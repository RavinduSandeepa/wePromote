<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<title>wePromote.com</title>
	<head>
		<meta charset="ISO-8859-1">
		<link rel="stylesheet" href="front.css">

	</head>
<body>
            <header>
                    <nav>
                    	<div class="dropdown">
 							<form action="LogoutServlet" method="post">
 								<button class="dropbtn">Logout</button>
 							</form>
 							
						</div>
                        <div class="dropdown">
 						 <button class="dropbtn">Employee</button>
  							<div class="dropdown-content">
						         <a href="#">Add Employees</a>
						    	<a href="#">Assign Employees</a>
						  </div>
						</div>
                        
                        <div class="dropdown">
 						 <button class="dropbtn">Tasks</button>
  								<div class="dropdown-content">
						   			<a href="#">Add Tasks</a>
						    		<a href="#">Bills</a>
						  	</div>
						</div>
						
						 <div class="dropdown">
 						 <button class="dropbtn">Orders</button>
  								<div class="dropdown-content">
						 			<a href="#">View Orders</a>
						  	</div>
						</div>
                         
						
	
						
						 <div class="dropdown">
 						 	<button class="dropbtn">Profile</button>
  						
						</div>
						
							            

                        <div class="menu-button">
                            <a href="#"><span class="text">&nbsp;Menu</span></a>
                        </div>
                    </nav>
                    <a class="logo" href="index.jsp">We Promote</a>
               
                </header>
               <script src="/front.js"></script>

</body>
</html>