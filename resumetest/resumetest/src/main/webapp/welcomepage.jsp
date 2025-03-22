<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>File Upload UI</title>

    
    <link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@700&display=swap" rel="stylesheet">
    
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/welcome.css">
</head>
<body>
<%
    response.setHeader("cache-control", "no-cache, no-store, must-revalidate");
    response.setHeader("pragma", "no-cache");
    response.setHeader("Expires", "0");

    if (session.getAttribute("username") == null) {
        response.sendRedirect("index.jsp");
    }
%>

    
    <nav class="navbar">
        <ul>
            <li><a href="${pageContext.request.contextPath}/analysismethod.jsp">Analysis Method And Future Enhancement</a></li>   <!-- yet to write code -->
            <li><a href="${pageContext.request.contextPath}/aboutme.jsp">About</a></li>
            <li><a href="${pageContext.request.contextPath}/logout">Logout</a></li>
        </ul>
    </nav>

   
    <div class="header">Find the right skills in seconds.</div>

    <div class="container">
        
        <div class="upload-box">
            <div class="upload-icon">📤</div>
            <h2>Upload Your Resume</h2><br><br>
            <p>Check Insights?</p>
            <p>Find Out Now!</p><br><br>
            <form action="${pageContext.request.contextPath}/upload" method="post" enctype="multipart/form-data">
                <input type="file" name="resume" id="fileInput" accept=".pdf,.doc,.docx" style="display: none;" required>
                <label for="fileInput" class="custom-file-upload">Choose File</label><br><br>
                <span id="file-name">No file chosen</span><br>
                <button>Submit</button>
            </form>
        </div>
    </div>

    
    <footer class="footer">
        <p>Developed by Nihal Yadav</p>
    </footer>

    <script>
        document.getElementById('fileInput').addEventListener('change', function() {
            var fileName = this.files[0] ? this.files[0].name : "No file chosen";
            document.getElementById('file-name').textContent = fileName;
        });
    </script>

    <style>
        
        .footer {
            text-align: center;
            background-color: #121212;
            color: #bb86fc;
            padding: 1rem;
            position: fixed;
            bottom: 0;
            width: 100%;
        }
    </style>

</body>
</html>


