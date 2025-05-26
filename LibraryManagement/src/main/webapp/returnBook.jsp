<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Return Book</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
<header><h1>Return Book</h1></header>

<div class="container">
    <form action="ReturnBookServlet" method="post">
        <input type="text" name="bookId" placeholder="Book ID" required>
        <input type="text" name="studentName" placeholder="Student Name" required>
        <input type="date" name="returnDate" required>
        <button type="submit">Return Book</button>
    </form>
</div>

<footer>&copy; <%= java.time.Year.now() %> Library Management System</footer>
</body>
</html>