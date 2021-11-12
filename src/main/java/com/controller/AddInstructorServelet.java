package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// Import Database Connection Class file
import com.util.DBConnectionUtilInstructor;
  
// Servlet Name
@WebServlet("/AddInstructorServelet")
public class AddInstructorServelet extends HttpServlet {
    private static final long serialVersionUID = 1L;
  
    protected void doPost(HttpServletRequest request, 
HttpServletResponse response)
        throws ServletException, IOException
    {
        try {
  
            // Initialize the database
            Connection con = DBConnectionUtilInstructor.initializeDatabase();
  
            // Create a SQL query to insert data into demo table
            // demo table consists of two columns, so two '?' is used
            PreparedStatement st = con
                   .prepareStatement("insert into instructor (assessmentId, type, version, batch, faculty, instructorName, datePublish, dueDate) values (?, ?, ?, ?, ?, ?, ?, ?)");
  
            // For the first parameter,
            // get the data using request object
            // sets the data to st pointer
            st.setString(1,(request.getParameter("assessmentId")));
            st.setString(2,(request.getParameter("type")));
            st.setString(3,(request.getParameter("version")));
            st.setDouble(4, Double.valueOf(request.getParameter("batch")));
            st.setString(5,(request.getParameter("faculty")));
            st.setString(6,(request.getParameter("instructorName")));
            st.setString(7,(request.getParameter("datePublish")));
            st.setString(8,(request.getParameter("dueDate")));
  
            // Execute the insert command using executeUpdate()
            // to make changes in database
            st.executeUpdate();
  
            // Close all the connections
            st.close();
            con.close();
  
            // Get a writer pointer 
            // to display the successful result
            PrintWriter out = response.getWriter();
            out.println("<html><head><title>Assessment Added</title></head><body> <center><h1 style='color:red'>Assessment Added Successfully  </h1><br><br><a href='/ExamAssessmentWebApp/JSP/assessment.jsp'><button  style='background-color:green;color:white;padding:5px'>Publish Assessment</button></a><a href='/ExamAssessmentWebApp/JSP/ListInstructor.jsp'><button  style='background-color:gray;color:white;padding:5px'>List All Assessments</button></a></center></body></html>");
        }
        catch (Exception e) {
            e.printStackTrace();
        }
    }
}