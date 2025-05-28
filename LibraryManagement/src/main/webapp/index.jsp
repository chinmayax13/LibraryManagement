<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Library Management System</title>
    <style>
        body {
            font-family: Arial;
            background-color: lightgreen;
            margin: 0;
            padding: 0;
            
        }

        header {
            background-color: brown;
            color: white;
            padding: 20px;
            text-align: center;
        }

        .container {
            padding: 120px;
            text-align: center;
            background-image: url('images/pexels-pixabay-256455.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center;

            
        }

        .box {
            background-color: lightgreen;
            border: 1px solid black;
            border-radius: 8px;
            display: inline-block;
            width: 200px;
            margin: 15px;
            padding: 20px;
        }

        .box a {
            text-decoration: none;
            color: blue;
            font-weight: bold;
        }
         .box p {
            text-decoration: none;
            color: black;
            font-weight: bold;
        }

        footer {
            text-align: center;
            padding: 55px;
            background-color: grey;
            margin-top:0px;
        }
    </style>
</head>
<body>

<header>
    <h1>Library Management System</h1>
</header>

<div class="container">
    <div class="box">
        <p>Add Book</p>
        <a href="addBook.jsp">Go</a>
    </div>

    <div class="box">
        <p>Issue Book</p>
        <a href="issueBook.jsp">Go</a>
    </div>

    <div class="box">
        <p>Return Book</p>
        <a href="returnBook.jsp">Go</a>
    </div>

    <div class="box">
        <p>View Books</p>
        <a href="viewBooks.jsp">Go</a>
    </div>
    
    <div class="box">
        <p>View Issued Books</p>
        <a href="showIssueBook.jsp">Go</a>
    </div>
     <div class="box">
        <p>View Students</p>
        <a href="viewStudent.jsp">Go</a>
    </div>
</div>

<footer>
    &copy; <%= java.time.Year.now() %> Library Management System
</footer>

</body>
</html>