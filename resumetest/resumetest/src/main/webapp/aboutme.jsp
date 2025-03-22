<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<%

response.setHeader("cache-control","no-cache , no-store , must revalidate");  

response.setHeader("pragme", "no-cache"); 
response.setHeader("Expires", "0"); 
	
	if(session.getAttribute("username")==null)
	{
		response.sendRedirect("index.jsp");
	}


%>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Me - Nihal Yadav</title>
    
   
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/aboutnihal.css">

    
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
</head>
<body>

   
    <nav class="navbar">
        <ul>
            <li><a href="${pageContext.request.contextPath}/welcomepage.jsp">Home</a></li>
            <li><a href="${pageContext.request.contextPath}/logout">Logout</a></li>
        </ul>
    </nav>

   
    <section class="about">
        <div class="about-content">
            <h1><span>about</span> me</h1>
            <p>I'm <b>Nihal Yadav</b>, Hi, I'm Nihal Yadav, a passionate Java developer with a strong foundation in backend technologies. My expertise lies in Core Java, Spring, Spring Boot, MVC, Hibernate, Servlets, JSP, and MySQL, allowing me to build efficient, scalable, and secure applications. I also have hands-on experience in Selenium for automation testing.While my primary focus is backend development, I am also familiar with HTML, CSS, JavaScript, and Python, which help me in full-stack development and scripting tasks. I am always eager to explore new technologies and enhance my skills to stay ahead in the ever-evolving tech industry.Currently, I am pursuing my studies at Sambhram Academy of Management Studies, Bengaluru, where I continue to expand my knowledge and work on exciting projects. My goal is to create impactful software solutions that improve user experiences and solve real-world problems efficiently. </p>
            
           
            <div class="social-icons">
                <a href="https://www.facebook.com/share/1BuWFHmJmK/?mibextid=qi2Omg"><i class="fab fa-facebook-f"></i></a>
                <a href="https://www.linkedin.com/in/nihal-yadav-"><i class="fab fa-linkedin-in"></i></a>
                <a href="https://github.com/Nih-0"><i class="fab fa-github"></i></a>
                <a href="https://www.instagram.com/invites/contact/?igsh=15vew9stxcpra&utm_content=2rtzfqz"><i class="fab fa-instagram"></i></a>
                <a href="https://wa.me/8088895784" target="_blank">
    <i class="fab fa-whatsapp"></i>
</a>
                
            </div>
        </div>

       
        <div class="profile-img">
            <img src="${pageContext.request.contextPath}/pictures/profile.jpg" alt="Profile Image">
        </div>
    </section>

   
    <section class="gallery">
        <div class="gallery-item" onclick="enlargeImage(this)">
            <img src="${pageContext.request.contextPath}/pictures/profile1.jpg" alt="Profile 1">
        </div>
        <div class="gallery-item" onclick="enlargeImage(this)">
            <img src="${pageContext.request.contextPath}/pictures/profile2.jpg" alt="Profile 2">
        </div>
        <div class="gallery-item" onclick="enlargeImage(this)">
            <img src="${pageContext.request.contextPath}/pictures/profile3.jpg" alt="Profile 3">
        </div>
    </section>
    <footer>
    <div class="footer-content">
        <p>&copy; 2025 Devloped By Nihal Yadav</p>
        <div class="contact-info">
            <a href="tel:+918088895784"><i class="fas fa-phone"></i> +91 80888 95784</a>
            <a href="mailto:varunbb30@gmail.com"><i class="fas fa-envelope"></i> varunbb30@gmail.com</a>
        </div>
    </div>
</footer>
    

  
 <script src="${pageContext.request.contextPath}/js/aboutnihal.js" defer></script>

</body>
</html>
    