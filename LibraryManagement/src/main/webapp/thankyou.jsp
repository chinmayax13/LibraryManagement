<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Thank You</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <header><h1>Thank You!</h1></header>

    <div class="container">
        <h1 style="color:white;">Your action was completed successfully.</h1>
        <a href="index.jsp"><button>Go to Home</button></a>
    </div>

    <footer>&copy; <%= java.time.Year.now() %> Library Management System</footer>
</body>
</html>