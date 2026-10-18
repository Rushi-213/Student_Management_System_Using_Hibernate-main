package com.student.controller;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.student.dao.StudentDAO;
import com.student.dao.StudentInterface;
import com.student.student.Student;

import jakarta.servlet.annotation.WebServlet;

@WebServlet("/StudentServlet")
public class StudentServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // 1. GET requests will ONLY fetch and show data in the table
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            StudentInterface stud = new StudentDAO();
            List<Student> list = stud.getStudent();
            
            // Pass the list to the JSP
            request.setAttribute("studentList", list);
            
            // Forward cleanly to the view page
            request.getRequestDispatcher("viewStudents.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("failed.jsp");
        }
    }

    // 2. POST requests will ONLY handle inserting new data from index.jsp
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        StudentInterface stud = new StudentDAO();
        
        String name = request.getParameter("name");
        String phy = request.getParameter("phy");
        String chem = request.getParameter("chem");
        String maths = request.getParameter("math");
        String bio = request.getParameter("bio");
        
        Student s = new Student();
        s.setName(name);
        s.setPhysics(phy);
        s.setChemistry(chem);
        s.setMathematics(maths);
        s.setBiology(bio);
        
        // Perform the insert operation
        if (stud.insertData(s)) {            
            response.sendRedirect("success.jsp");
        } else {
            response.sendRedirect("failed.jsp");
        }
    }
}
