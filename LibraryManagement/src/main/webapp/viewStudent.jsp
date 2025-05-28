<%@ page import="java.util.*, com.library.dao.StudentDAO, com.library.model.Student" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>View Students</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
<header><h1>Registered Students</h1></header>

<div class="container">
    <table>
        <tr>
           <th>Name</th><th>Username</th><th>Email</th>
        </tr>
        <%
            List<Student> students = StudentDAO.getAllStudents();
            for (Student s : students) {
        %>
        <tr>
       
            <td><%= s.getName() %></td>
            <td><%= s.getUsername() %></td>
            <td><%= s.getEmail() %></td>
        </tr>
        <% } %>
    </table>
</div>

<footer>&copy; <%= java.time.Year.now() %> Library Management System</footer>
</body>
</html>
