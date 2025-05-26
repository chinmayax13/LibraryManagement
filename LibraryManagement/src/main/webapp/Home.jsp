<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Library Home</title>
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
    <header><h1>Welcome to Library Management System</h1></header>

    <div class="container">
    	  
    	    <div class="box">
      		  <p>Register as Student</p>
       		 <a href="registerStudent.jsp">Go</a>
    	  </div>
    	    <div class="box">
      		  <p>Register as Librarian</p>
       		 <a href="registerLibrarian.jsp">Go</a>
    	  </div>
    	 <br> <div class="box">
      		  <p>Login</p>
       		 <a href="login.jsp">Go</a>
    	  </div>
    	  
    </div>

   <footer>
    &copy; <%= java.time.Year.now() %> Library Management System
   </footer>
</body>
</html>