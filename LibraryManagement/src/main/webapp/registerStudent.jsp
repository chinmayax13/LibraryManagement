<!DOCTYPE html>
<html>
<head>
    <title>Student Registration</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="container">
        <h2 style="color:white">Student Registration</h2>
        <form action="RegisterStudentServlet" method="post">
            <input type="text" name="name" placeholder="Student Name" required><br>
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