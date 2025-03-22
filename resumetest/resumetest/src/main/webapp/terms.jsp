<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Terms and Conditions</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400&display=swap');

        body {
            background: black;
            color: white;
            font-family: 'Poppins', sans-serif;
            text-align: center;
            padding: 20px;
            position: relative;
        }

        
        body::before {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: url('https://www.transparenttextures.com/patterns/asfalt-light.png');
            opacity: 0.7;
            pointer-events: none;
        }

        h1 {
            font-size: 2rem;
            margin-bottom: 10px;
        }

        .container {
            max-width: 800px;
            margin: auto;
            text-align: left;
            padding: 20px;
        }

        h2 {
            font-size: 1.5rem;
            margin-top: 20px;
            border-bottom: 1px solid white;
            padding-bottom: 5px;
        }

        p {
            font-size: 1rem;
            line-height: 1.6;
            margin: 10px 0;
        }

        footer {
            margin-top: 20px;
            opacity: 0.7;
        }
    </style>
</head>
<body>
    <h1>Terms and Conditions</h1>
    <div class="container">
        <h2>1. Introduction</h2>
        <p>CVXpert is designed for resume analysis using NLP. By using this tool, you agree to the terms below.</p>

        <h2>2. Purpose</h2>
        <p>This tool is for testing and demonstration purposes only.</p>
        <p>It helps analyze resumes by extracting names and technical skills.</p>
        <p>CVXpert does not guarantee 100% accuracy or hiring decisions.</p>

        <h2>3. Data Privacy</h2>
        <p>Uploaded resumes are not stored permanently.</p>
        <p>We do not share user data with third parties.</p>
       

        <h2>4. Limitations</h2>
        <p>The tool may have errors in skill detection or data extraction.</p>
        <p>Users should manually review results before relying on them.</p>
        <p>Future updates may improve accuracy and add more features.</p>

        <h2>5. Liability</h2>
        
        <p>We are not responsible for any incorrect analysis or decisions made using this tool.</p>

        <h2>6. Contact</h2>
        <p>For any questions, reach out at varunbb30@gmail.com</p>
    </div>
    <footer>© 2025 CVXpert | Developed by Nihal Yadav</footer>
</body>
</html>
