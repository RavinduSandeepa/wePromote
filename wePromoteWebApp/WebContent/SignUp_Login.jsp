<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SignUp and Login</title>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"  href="CSS/myCss.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="CSS/style_logreg.css">

<style>
	body {
    background:url("Images/img3.jpg");
	background-repeat: no-repeat;
	background-attachment: fixed;
}
</style>
</head>
<body>

	<jsp:include page="/WEB-INF/views/Header1.jsp"></jsp:include>
	<br>

  <div class="form" align="center">
      
      <ul class="tab-group">
        <li class="tab active"><a href="#signup">Sign Up</a></li>
        <li class="tab"><a href="#login">Log In</a></li>
      </ul>
      
      <div class="tab-content">
      
		   <div id="signup">   
		          <h1>Sign Up for Free</h1>
		          
		       <form action="AddUserServlet" method="post">
		          
		          <div class="top-row">
		               <div class="field-wrap">
		              		<label>
		                		First Name<span class="req">*</span>
		              		</label>
		              			<input type="text" name="Fname" required autocomplete="off" />
		              </div>
		        
		            <div class="field-wrap">
		              		<label>
		                		Last Name<span class="req">*</span>
		              		</label>
		              			<input type="text" name="Lname" required autocomplete="off"/>
		            </div>
		          </div>
		
		          <div class="field-wrap">
		            		<label>
		              			Email Address<span class="req">*</span>
		            		</label>
		            			<input type="email" name="email" required autocomplete="off"/>
		          </div>
		          
		          <div class="field-wrap">
		            		<label>
		              			Set A Password<span class="req">*</span>
		            		</label>
		            			<input type="password" name="pass" required autocomplete="off"/>
		          </div>
				  
				  <div class="field-wrap">
		            		<label>
		              			Confirm Password<span class="req">*</span>
		            		</label>
		            			<input type="password" required autocomplete="off"/>
		          </div>
		
				  <div class="field-wrap">
							<label>
								<p class="agree"><a href="#">I agree to the Terms of Use</a></p>
							</label>
		
		          </div><br>
				  
		          		<button type="submit" name="save" class="button button-block"/>Get Started</button>
		          
		       </form>
		
		        </div>
        
		<div id="login">   
			
			<h1>Welcome Back!</h1>
			          
			 <form action="LoginServlet" method="post">
			          
			   <div class="field-wrap">
			            <label>
			              Email Address<span class="req">*</span>
			            </label>
			            <input type="email" name="uEmail" required autocomplete="off"/>
			   </div>
			          
			   <div class="field-wrap">
			        <label>
			              Password<span class="req">*</span>
			         </label>
			            <input type="password" name="uPassword" required autocomplete="off"/>
			   </div>
			          
			          <p class="forgot"><a href="#">Forgot Password?</a></p>
			          
			          <button type="submit" name="save" class="button button-block"/>Log In</button>
			          
			</form>
			
			        </div>
        
      </div>
      
</div>
<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script  src="JS/login_signup.js"></script>

</body>
</html>