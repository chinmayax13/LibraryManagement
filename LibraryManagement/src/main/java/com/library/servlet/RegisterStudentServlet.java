package com.library.servlet;

import com.library.dao.StudentDAO;
import com.library.model.Student;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

public class RegisterStudentServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // Handles form submission (POST request)
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        String username = req.getParameter("username");
        String email = req.getParameter("email");
        String password = req.getParameter("password");

        Student student = new Student(name, username, email, password);
        boolean success = StudentDAO.addStudent(student);

        if (success) {
            resp.sendRedirect("success.jsp");
        } else {
            req.setAttribute("error", "Registration failed.");
            req.getRequestDispatcher("studentRegister.jsp").forward(req, resp);
        }
    }

    // (Optional) List students when accessed via GET
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Student> studentList = StudentDAO.getAllStudents();
        req.setAttribute("students", studentList);
        RequestDispatcher dispatcher = req.getRequestDispatcher("viewStudents.jsp");
        dispatcher.forward(req, resp);
    }
}
