<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Issue Book</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
<header><h1>Issue Book</h1></header>

<div class="container">
    <form action="IssueBookServlet" method="post">
        <input type="text" name="bookId" placeholder="Book ID" required>
        <input type="text" name="studentName" placeholder="Student Name" required>
        <input type="date" name="issueDate" required>
        <button type="submit">Issue Book</button>
    </form>
</div>

<footer>&copy; <%= java.time.Year.now() %> Library Management System</footer>
</body>
</html>