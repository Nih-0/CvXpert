package com.analysis;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.*;

import org.apache.catalina.Session;

import jakarta.servlet.http.HttpServletRequest;
import opennlp.tools.namefind.NameFinderME;
import opennlp.tools.namefind.TokenNameFinderModel;
import opennlp.tools.tokenize.SimpleTokenizer;
import opennlp.tools.tokenize.Tokenizer;
import opennlp.tools.util.Span;

public class ResumeAnalyzer {
   
    private static final List<String> SKILLS_DATABASE = Arrays.asList(
        "Java", "Python", "C++", "JavaScript", "SQL", "HTML", "CSS", "Spring Boot", "React",
        "Machine Learning", "Deep Learning", "AI", "Data Science", "Node.js", "Docker", "AWS","Swift","Flutter"
    );

    public static String analyzeResume(String resumeText  , HttpServletRequest request)
    {
        try {
        	
           
            InputStream modelIn = new FileInputStream("C:\\Users\\Nihal\\eclipse-workspace\\resumetest\\src\\main\\resources\\models\\en-ner-person.bin");
            TokenNameFinderModel model = new TokenNameFinderModel(modelIn);
            NameFinderME nameFinder = new NameFinderME(model);

         
            Tokenizer tokenizer = SimpleTokenizer.INSTANCE;
            String[] tokens = tokenizer.tokenize(resumeText);

            
            Span[] spans = nameFinder.find(tokens);
            Set<String> uniqueNames = new HashSet<>();
            for (Span span : spans) {
                uniqueNames.add(tokens[span.getStart()]);
            }

           
            Map<String, Integer> skillCounts = new HashMap<>();
            int totalSkills = 0;
            String highestSkill = "";
            int highestCount = 0;

            for (String token : tokens) {
                if (SKILLS_DATABASE.contains(token)) {
                    int count = skillCounts.getOrDefault(token, 0) + 1;
                    skillCounts.put(token, count);
                    totalSkills++;

                   
                    if (count > highestCount) {
                        highestSkill = token;
                        highestCount = count;
                    }
                }
            }
        

          
            StringBuilder skillsWithPercentage = new StringBuilder("Skills Found:\n");
            for (Map.Entry<String, Integer> entry : skillCounts.entrySet()) {
                double percentage = (entry.getValue() / (double) totalSkills) * 100;
                skillsWithPercentage.append(entry.getKey())
                                    .append(": ")
                                    .append(entry.getValue()) // Count
                                    .append(" times (")
                                    .append(String.format("%.2f", percentage)) 
                                    .append("%)\n");
            }
            
          

           
            String highestSkillOutput = highestSkill.isEmpty() ? "No skills found" 
                : "Highest Skill: " + highestSkill + " (" + highestCount + " times)";
            

            return "Names Found: " + String.join(", ", uniqueNames) + "\n" 
                    + skillsWithPercentage.toString() 
                    + highestSkillOutput;
            
                    
        } catch (IOException e) {
            e.printStackTrace();
            return "Error analyzing resume!";
        }
    }
}
