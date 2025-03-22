<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Signup Page</title>
    <style>
       
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

    
        body {
            font-family: Arial, sans-serif;
            background-color: #121212; 
            color: #e0e0e0; 
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        
        .signup-container {
            background-color: #1f1f1f; 
            padding: 2rem;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.3);
            width: 100%;
            max-width: 400px;
        }

        .signup-container h2 {
            text-align: center;
            margin-bottom: 1.5rem;
            color: #bb86fc; 
        }

        
        .form-group {
            margin-bottom: 1.5rem;
        }

        .form-group label {
            display: block;
            margin-bottom: 0.5rem;
            color: #bb86fc; 
        }

        .form-group input {
            width: 100%;
            padding: 0.8rem;
            background-color: #2c2c2c; 
            border: 1px solid #444444; 
            border-radius: 5px;
            font-size: 1rem;
            color: #e0e0e0; 
            outline: none;
            transition: border-color 0.3s ease;
        }

        .form-group input:focus {
            border-color: #bb86fc; 
        }

        
        .submit-btn {
            width: 100%;
            padding: 0.8rem;
            background-color: #bb86fc;
            color: #121212; 
            border: none;
            border-radius: 5px;
            font-size: 1rem;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .submit-btn:hover {
            background-color: #9a67ea; 
        }

       
        .login-link {
            text-align: center;
            margin-top: 1rem;
            color: #bb86fc; 
        }

        .login-link a {
            color: #bb86fc; 
            text-decoration: none;
        }

        .login-link a:hover {
            text-decoration: underline;
        }
    </style>

    <script>
        function validateForm() {
            var phone = document.getElementById("phone").value;
            var username = document.getElementById("username").value;
            var password = document.getElementById("password").value;
            var email = document.getElementById("email").value;

           
            var phonePattern = /^[6789]\d{9}$/;
            if (!phonePattern.test(phone)) {
                alert("Phone number must start with 6, 7, 8, or 9 and be exactly 10 digits.");
                return false;
            }

           
            var emailPattern = /^(?=.*\d.*\d)[a-zA-Z0-9._%+-]+@[a-zA-Z0-9-]+\.[a-zA-Z]{2,}$/;
            if (!emailPattern.test(email)) {
                alert("Email must contain at least 2 numbers and end with @xxxxx.com.");
                return false;
            }

           
            var passwordPattern = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{5,}$/;
            if (!passwordPattern.test(password)) {
                alert("Password must be at least 5 characters long, include uppercase, lowercase, a number, and a special character.");
                return false;
            }

            
            alert("Registered successfully!");
            return true;
        }
    </script>

</head>
<body>
   
    <div class="signup-container">
        <h2>Sign Up</h2>
        <form action="${pageContext.request.contextPath}/verified" method="post" onsubmit="return validateForm()">

           
            <div class="form-group">
                <label for="phone">Phone Number</label>
                <input type="tel" id="phone" name="phone" placeholder="Enter your phone number" required>
            </div>

           
            <div class="form-group">
                <label for="username">Username</label>
                <input type="text" id="username" name="username" placeholder="Choose a username" required>
            </div>

           
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" placeholder="Create a password" required>
            </div>

           
            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" id="email" name="email" placeholder="Enter your email" required>
            </div>

            
            <button type="submit" class="submit-btn">Sign Up</button>
        </form>

       
        <div class="login-link">
            Already have an account? <a href="${pageContext.request.contextPath}/index.jsp">Login</a>
        </div>
    </div>
</body>
</html>
