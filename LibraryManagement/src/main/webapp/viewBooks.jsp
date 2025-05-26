<%@ page import="java.util.*, com.library.dao.BookDAO, com.library.model.Book" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>View Books</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
<header><h1>All Books</h1></header>

<div class="container">
    <table>
        <tr>
            <th>ID</th><th>Title</th><th>Author</th><th>Quantity</th>
        </tr>
        <%
            List<Book> books = BookDAO.getAllBooks();
            for(Book b : books) {
        %>
        <tr>
            <td><%= b.getId() %></td>
            <td><%= b.getTitle() %></td>
            <td><%= b.getAuthor() %></td>
            <td><%= b.getQuantity() %></td>
        </tr>
        <% } %>
    </table>
</div>

<footer>&copy; <%= java.time.Year.now() %> Library Management System</footer>
</body>
</html>