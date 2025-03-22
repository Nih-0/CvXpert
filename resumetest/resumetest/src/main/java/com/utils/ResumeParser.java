package com.utils;

import java.io.InputStream;
import org.apache.tika.Tika;

public class ResumeParser {
	 public static String extractText(InputStream fileStream) {
	        Tika tika = new Tika();
	        try {
	            return tika.parseToString(fileStream);
	        } catch (Exception e) {
	            e.printStackTrace();
	            return "Error extracting text!";
	        }
	    }
}
