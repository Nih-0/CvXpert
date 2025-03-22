<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>CVXpert - Analysis Method</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap');

        body {
            background: black;
            color: white;
            height: 100vh;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            font-family: 'Poppins', sans-serif;
            text-align: center;
            padding: 20px;
            margin: 0;
            position: relative;
        }

        /* White noise grain effect */
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
            font-size: 2.5rem;
            text-transform: uppercase;
            letter-spacing: 2px;
            font-weight: 600;
            margin-bottom: 10px;
        }

        p, ul {
            max-width: 800px;
            font-size: 1.2rem;
            line-height: 1.6;
        }

        ul {
            list-style-type: none;
            padding: 0;
        }

        ul li {
            margin: 10px 0;
            font-size: 1.1rem;
        }

        footer {
            margin-top: 30px;
            font-size: 1rem;
            font-weight: 400;
            opacity: 0.8;
        }
    </style>
</head>
<body>
    <h1>CVXpert</h1>
    <p>CVXpert is a resume analysis tool built using <strong>Java, Servlets, OpenNLP, and Apache Tomcat</strong>, designed to streamline the recruitment process.</p>
    <p>When a resume is uploaded, the system extracts key details such as the candidate’s <strong>name and technical skills</strong> using Natural Language Processing (NLP) techniques.</p>
    <p>By utilizing the <strong>OpenNLP Name Finder Model</strong>, it accurately identifies names, while a predefined skills database helps detect relevant technologies like <strong>Java, Python, React, SQL, AWS</strong>, and more.</p>
    <p>The tool then counts occurrences of each skill, calculates their percentage distribution, and determines the <strong>most frequently mentioned skill</strong>, providing insights into the candidate’s strongest expertise.</p>
    
    <h2>🚀 Future Enhancements</h2>
    <ul>
        <li><strong>AI-Driven Analysis</strong> – Implementing machine learning algorithms to enhance skill recognition.</li>
        <li><strong>Experience Extraction</strong> – Extracting and analyzing job experience from resumes.</li>
        <li><strong>Dynamic Skill Recognition</strong> – Identifying new and emerging skills automatically.</li>
        <li><strong>Case-Insensitive Matching</strong> – Enhancing keyword detection for better accuracy.</li>
        <li><strong>Job Recommendations</strong> – Matching candidates with relevant job opportunities.</li>
    </ul>

    <footer>Developed by Nihal Yadav 🚀</footer>
</body>
</html>
