<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ticket Trade - Login</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
     <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css">
     
  	<script src="${pageContext.request.contextPath}/js/script.js" defer></script>
  	


     
     
    
</head>
<body>s
    <div class="container">
        <div class="left-section">
            <h1>CVXpert </h1>
            <p class="tagline">Detect skills instantly ,<span> hire with confidence.</span></p>
        </div>
        <div class="login-card">
            <h2>Login</h2>
          		<!-- <form action="welcome" id="loginForm" method="post">

   				 <input type="text" id="username" name="username" placeholder="Username" required>
   				 <input type="password" id="password" name="password" placeholder="Password" required>
   				 <div class="remember-me">
      			  <input type="checkbox" id="remember" name="remember">
       			 <label for="remember">Remember me</label>
   				 </div>
   				 <button type="submit">Login</button>
				</form> -->
		<form action="${pageContext.request.contextPath}/test" method="post">
  	 	 <input type="text" name="username" placeholder="Enter username" id="username" required>
  	 	 <input type="password" name="password" placeholder="Enter password" id="password" required><br><br>
  		  <input type="submit" value="Login">
		</form><br><br>
				
    
            <p class="signup">Don't have an account? <a href="${pageContext.request.contextPath}/signupui.jsp">Signup</a></p>
            <div class="footer-links">
                <a href="${pageContext.request.contextPath}/terms.jsp">Terms & Conditions</a>
                
            </div>
        </div>
    </div>
    
   
</body>
</html>