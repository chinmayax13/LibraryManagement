package com.library.servlet;

import java.sql.Date;
import com.library.dao.IssueBookDAO;
import com.library.model.IssueBook;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;

public class IssueBookServlet extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        int bookId = Integer.parseInt(req.getParameter("bookId"));
        String studentName = req.getParameter("studentName");
        Date issueDate= Date.valueOf(req.getParameter("issueDate"));
        IssueBook ib = new IssueBook(bookId,studentName,issueDate);
        boolean success = IssueBookDAO.issueBook(ib);
        resp.sendRedirect("thankyou.jsp");
    }
}