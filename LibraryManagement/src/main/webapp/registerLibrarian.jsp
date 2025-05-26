<!DOCTYPE html>
<html>
<head>
    <title>Librarian Registration</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="container">
        <h2>Librarian Registration</h2>
        <form action="RegisterLibrarianServlet" method="post">
            <input type="text" name="name" placeholder="Librarian Name" required><br>
            <input type="email" name="email" placeholder="Email" required><br>
            <input type="text" name="username" placeholder="Username" required><br>
            <input type="password" name="password" placeholder="Password" required><br>
            <button type="submit">Register</button>
        </form>
    </div>
    <footer>
    &copy; <%= java.time.Year.now() %> Library Management System
   </footer>
</body>
</html>