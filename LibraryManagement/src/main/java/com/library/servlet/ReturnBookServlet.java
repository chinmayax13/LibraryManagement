package com.library.servlet;

import com.library.dao.BookDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;

public class ReturnBookServlet extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        int bookId = Integer.parseInt(req.getParameter("bookId"));
        boolean success = BookDAO.returnBook(bookId);
        resp.sendRedirect("returnBook.jsp");
    }
}