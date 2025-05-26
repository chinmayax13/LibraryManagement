<%@ page import="java.util.*, com.library.dao.IssueBookDAO, com.library.model.IssueBook" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Issued Books</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
<header><h1>Issued Books</h1></header>

<div class="container">
    <table>
        <tr>
           <th>Book ID</th><th>Student Name</th><th>Issue Date</th>
        </tr>
        <%
            List<IssueBook> issuedBooks = IssueBookDAO.getAllIssuedBooks();
            for(IssueBook ib : issuedBooks) {
        %>
        <tr>
   
            <td><%= ib.getBookId() %></td>
            <td><%= ib.getStudentName() %></td>
            <td><%= ib.getIssueDate() %></td>
        </tr>
        <% } %>
    </table>
</div>

<footer>&copy; <%= java.time.Year.now() %> Library Management System</footer>
</body>
</html>