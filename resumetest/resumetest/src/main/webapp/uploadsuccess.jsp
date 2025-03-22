<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@400;700&display=swap" rel="stylesheet">
	
    <meta charset="UTF-8">
    <title>Upload Successful</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Great+Vibes&display=swap');

       
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            padding: 50px;
            background: black;
            color: white;
            height: 100vh;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
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
            opacity: 1;
            pointer-events: none;
        }

       
        .fancy-heading {
           position: relative;
			top: -27%;
    		margin-top: 80px;
    		text-align: center;
   		 font-family: 'Dancing Script', cursive;
    		font-size: 48px;
    	font-weight: 700;
   		 color: white;
    	text-shadow: 3px 3px 10px rgba(255, 255, 255, 0.3);
        }

        .success-message { 
            color: #28a745; 
            font-size: 24px; 
            font-weight: bold; 
            position: relative;
        }

        .analysis-result { 
            margin-top: 20px; 
            padding: 20px; 
            border: 1px solid #444; 
            background: rgba(51, 51, 51, 0.8); 
            display: inline-block; 
            text-align: left; 
            border-radius: 10px; 
            width: 60%;
            position: relative;
        }

        .button { 
            padding: 10px 20px; 
            background: #28a745; 
            color: white; 
            text-decoration: none; 
            border-radius: 5px; 
            margin-top: 10px; 
            display: inline-block; 
            position: relative;
        }

        .button:hover { background: #218838; }

        
        .bar-container { 
            width: 100%; 
            height: 30px; 
            background: #444; 
            border-radius: 5px; 
            overflow: hidden; 
            margin-top: 10px; 
            position: relative;
        }

        .bar { 
            height: 100%; 
            width: 0; 
            background: linear-gradient(to right, red, orange, yellow, green); 
            transition: width 3s ease-in-out; 
        }
    </style>
</head>
<body>
    <div class="fancy-heading">Analyze. Optimize. Get Hired!</div>
    <div class="success-message">🎉 Resume Uploaded Successfully!</div>

    <%-- Fetch the analysis result from the session --%>
    <%
        String analysisResult = (String) session.getAttribute("analysisResult");
        String highestSkill = "N/A";
        double highestPercentage = 0;

        if (analysisResult != null) {
            String[] skillEntries = analysisResult.split("[, ]+"); 

            for (int i = 0; i < skillEntries.length; i++) {
                if (skillEntries[i].contains("%")) {
                    try {
                        double percentValue = Double.parseDouble(skillEntries[i].replaceAll("[^0-9.]", ""));
                        if (percentValue > highestPercentage) {
                            highestPercentage = percentValue;
                            highestSkill = skillEntries[i - 3]; 
                        }
                    } catch (Exception e) {
                        
                    }
                }
            }
        }
    %>

    <% if (analysisResult != null) 
    { %>
        <div class="analysis-result">
            <h3>🔍 Resume Analysis Result:</h3>
            <p><%= analysisResult %></p>
            <h3>📊 Skill Level Bar Graph:</h3>
            <p><strong>Highest Skill:</strong> <%= highestSkill %></p>
            <p><strong>Percentage:</strong> <%= String.format("%.2f", highestPercentage) %>%</p>
            

            <div class="bar-container">
                <div class="bar" id="bar"></div>
            </div>
        </div>

        <script>
            document.addEventListener("DOMContentLoaded", function() {
                let percentage = <%= highestPercentage %>; 
                percentage = Math.max(0, Math.min(100, percentage)); 
                document.getElementById("bar").style.width = percentage + "%"; 
            });
        </script>
    <% } else { %>
        <p style="color: red; position: relative;">⚠ No analysis result found.</p>
    <% } %>
    
    <%
    if(highestSkill=="java") 
    { %>
		<h1>Java 8+ Features (Essential)</h1>
		<p>Lambda Expressions & Functional Interfaces</p>
		<p>Streams API & Method References</p>
		<P>Optional Class (Avoid NullPointerException)</p>
		<p>Date & Time API (java.time package)</p>
		
    	
   <% } %> 
    
    

    <br>
    <a href="welcomepage.jsp" class="button">Go to Dashboard</a>
</body>
</html>
