package com.login;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import dao.signup;


@WebServlet("/verified")
public class signuppage extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String phone = request.getParameter("phone");
        String username2 = request.getParameter("username");
        String password2 = request.getParameter("password");
        String email = request.getParameter("email");

        signup dao = new signup();
        boolean isValid = dao.upload(phone, username2, password2, email);

        if (isValid == true) {
            HttpSession session = request.getSession();
            session.setAttribute("username", username2);
            response.sendRedirect("index.jsp");
            System.out.println("Signup successful: " + username2);
        } else {
            response.sendRedirect("signupui.jsp?error=Signup failed, try again.");
        }
    }
}
