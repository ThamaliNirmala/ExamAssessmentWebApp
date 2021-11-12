package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.InstructorLogin;
import com.util.DBInstructorLogin;

@WebServlet("/login")
public class InstructorLoginServelet extends HttpServlet {
    private static final long serialVersionUID = 1;
    private DBInstructorLogin loginDao;

    public void init() {
        loginDao = new DBInstructorLogin();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
    	
    	PrintWriter pw=response.getWriter();

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        InstructorLogin loginBean = new InstructorLogin();
        loginBean.setUsername(username);
        loginBean.setPassword(password);

        try {
            if (loginDao.validate(loginBean)) {
                //HttpSession session = request.getSession();
                // session.setAttribute("username",username);
                response.sendRedirect("JSP/instructorLoginSuccessfull.jsp");
            } else {
                @SuppressWarnings("unused")
				HttpSession session = request.getSession();
                //session.setAttribute("user", username);
                pw.println("Login Failed...!");
                response.sendRedirect("JSP/instructorLoginFail.jsp");
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
}