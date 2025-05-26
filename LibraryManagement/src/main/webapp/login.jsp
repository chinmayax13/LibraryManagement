<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="container">
        <h2>Login</h2>
        <form action="LoginServlet" method="post">
            <input type="text" name="identifier" placeholder="Email or Username" required><br>
            <input type="password" name="password" placeholder="Password" required><br>
            <select name="role" required>
                <option value="">Select Role</option>
                <option value="student">Student</option>
                <option value="librarian">Librarian</option>
            </select><br>
            <button type="submit">Login</button>
        </form>
    </div>
    
   <footer>
    &copy; <%= java.time.Year.now() %> Library Management System
   </footer>
</body>
</html>