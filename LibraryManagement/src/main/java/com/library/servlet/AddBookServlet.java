
package com.library.servlet;

import com.library.dao.BookDAO;
import com.library.model.Book;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;

public class AddBookServlet extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        String title = req.getParameter("title");
        String author = req.getParameter("author");
        int quantity = Integer.parseInt(req.getParameter("quantity"));

        Book book = new Book(title, author, quantity);
        boolean success = BookDAO.addBook(book);
        
        resp.sendRedirect("thankyou.jsp");
    }
}