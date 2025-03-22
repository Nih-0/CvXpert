package com.login;

import java.io.IOException;
import java.io.PrintWriter;

import org.apache.jasper.tagplugins.jstl.core.Out;

import dao.checklogin;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;



@WebServlet("/test")
public class loginpage extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		
		  String username1 = request.getParameter("username");
	        String password1 = request.getParameter("password");

	       checklogin dao = new checklogin();
	       boolean isValid = dao.check(username1, password1);

	        System.out.println("Username: " + username1 + ", Password: " + password1 + ", Valid: "+ isValid );

       if (isValid ==true) {
            HttpSession session = request.getSession();
            session.setAttribute("username", username1);
            response.sendRedirect("welcomepage.jsp");
        } else {
            response.sendRedirect("index.jsp?error=Invalid credentials");
        }
	   
		PrintWriter out=response.getWriter();
		
		out.print(("reaching here"));
//		response.sendRedirect("welcome.jsp");
	}
	}

