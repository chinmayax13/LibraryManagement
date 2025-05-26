<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Add Book</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
<header><h1>Add New Book</h1></header>

<div class="container">
    <form action="AddBookServlet" method="post">
        <input type="text" name="title" placeholder="Book Title" required>
        <input type="text" name="author" placeholder="Author" required>
        <input type="number" name="quantity" placeholder="Quantity" required>
        <button type="submit">Add Book</button>
    </form>
</div>

<footer>&copy; <%= java.time.Year.now() %> Library Management System</footer>
</body>
</html>