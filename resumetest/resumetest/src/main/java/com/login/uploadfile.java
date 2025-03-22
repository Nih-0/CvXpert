package com.login;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;

import org.apache.catalina.Session;

import dao.daoupload;
import com.utils.ResumeParser;
import com.analysis.ResumeAnalyzer;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;

@WebServlet("/upload")
@MultipartConfig(maxFileSize = 16177215)  
public class uploadfile extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = (String) request.getSession().getAttribute("username"); 
        if (username == null) {
            response.getWriter().write("User not logged in!");
            return;
        }

        Part filePart = request.getPart("resume"); 
        if (filePart == null || filePart.getSize() == 0) {
            response.getWriter().write("No file uploaded!");
            return;
        }

        
        InputStream fileData = filePart.getInputStream();
        ByteArrayOutputStream buffer = new ByteArrayOutputStream();
        byte[] data = new byte[1024];
        int bytesRead;
        while ((bytesRead = fileData.read(data)) != -1) {
            buffer.write(data, 0, bytesRead);
        }
        byte[] fileBytes = buffer.toByteArray(); 

        
        String extractedText = ResumeParser.extractText(new ByteArrayInputStream(fileBytes));
        String analysisResult = ResumeAnalyzer.analyzeResume(extractedText, request);
    //    
	/*
	 * String[] words = analysisResult.split(" "); int maxCount=0; String
	 * maxRepeated = "";
	 * 
	 * for (int i = 0; i < words.length; i++) { int count = 0;
	 * 
	 * 
	 * for (int j = 0; j < words.length; j++) { if (words[i].equals(words[j])) {
	 * count++; } }
	 * 
	 * 
	 * if (count > maxCount) { maxCount = count; maxRepeated = words[i]; } // }
	 */

       
        daoupload dao = new daoupload();
        boolean isUploaded = dao.uploadResume(username, new ByteArrayInputStream(fileBytes));

        
        if (isUploaded) {
        	HttpSession session=request.getSession();
        	session.setAttribute("analysisResult", analysisResult );
        	
            System.out.println("Analysis: " + analysisResult);
            response.sendRedirect("uploadsuccess.jsp"); 
        } else {
            response.getWriter().write("File upload failed!");
        }
    }
}


