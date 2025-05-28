package com.library.servlet;

import com.library.dao.DBConnection;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.*;

public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        String identifier = req.getParameter("identifier");
        String password = req.getParameter("password");
        String role = req.getParameter("role");

        String table = role.equals("student") ? "students" : "librarians";
        String sql = "SELECT * FROM " + table + " WHERE (email=? OR username=?) AND password=?";

        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
             
            stmt.setString(1, identifier);
            stmt.setString(2, identifier);
            stmt.setString(3, password);

            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                HttpSession session = req.getSession();
                session.setAttribute("user", rs.getString("username"));
                session.setAttribute("role", role);  // Store role if needed later
                
                if (role.equals("student")) {
                    resp.sendRedirect("index2.jsp");  // Student home page
                } else {
                    resp.sendRedirect("index.jsp");   // Librarian home page
                }
            } else {
                resp.getWriter().println("Login failed. Invalid credentials.");
            }
        } catch (Exception e) {
            e.printStackTrace();
            resp.getWriter().println("Error: " + e.getMessage());
        }
    }
}
