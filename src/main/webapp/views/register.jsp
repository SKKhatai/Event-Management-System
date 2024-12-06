<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<html>
	<head>
	    <meta charset="UTF-8">
	    <title>Register</title>
	    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
	    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
	    <script src="https://cdn.tailwindcss.com"></script>
	    <style>
	        body {
	            font-family: 'Roboto', sans-serif;
	            background-color: #f4f4f4;
	            display: flex;
	            justify-content: center;
	            align-items: center;
	            height: 100vh;
	            margin: 0;
	        }
	        .register-container {
	            background-color: #fff;
	            padding: 20px;
	            border-radius: 8px;
	            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	            width: 300px;
	        }
	        .register-container h2 {
	            text-align: center;
	            margin-bottom: 20px;
	        }
	        .register-container .form-group {
	            margin-bottom: 15px;
	        }
	        .register-container .form-group label {
	            display: block;
	            margin-bottom: 5px;
	        }
	        .register-container .form-group input {
	            width: 100%;
	            padding: 10px;
	            border: 1px solid #ccc;
	            border-radius: 4px;
	        }
	        .register-container .form-group input:focus {
	            border-color: #007bff;
	        }
	        .register-container .form-group .fa {
	            position: absolute;
	            margin-left: -25px;
	            margin-top: 15px;
	            color: #ccc;
	        }
	        .register-container .form-group input:focus + .fa {
	            color: #007bff;
	        }
	        .register-container .register-btn {
	            width: 100%;
	            padding: 10px;
	            background-color: #007bff;
	            border: none;
	            border-radius: 4px;
	            color: #fff;
	            font-size: 16px;
	            cursor: pointer;
	        }
	        .register-container .register-btn:hover {
	            background-color: #0056b3;
	        }
	    </style>
	</head>
	<body>
	    <div class="register-container">
	        <h2>Register here</h2>
	        
	        <c:if test="${ not empty successMessage}">
	            <h4 style="color:green">${successMessage}</h4>
	        </c:if>
	        
	        <c:if test="${ not empty errorMessage}">
	            <h4 style="color:red">${errorMessage}</h4>
	        </c:if>
	        
	        <form action="regForm" method="post">
	        	<div>
	        	<label for="username">UserName</label>
	        	<input type="text" id="username" name="username" required>
	        	<i class="fa fa-user"></i>
	        	</div>
	            <div class="form-group">
	                <label for="name">Name</label>
	                <input type="text" id="name" name="name" required>
	                <i class="fa fa-user"></i>
	            </div>
	            <div class="form-group">
	                <label for="phoneno">Phone NO.</label>
	                <input type="text" id="phoneno" name="phoneno" required>
	                <i class="fa fa-phone"></i>
	            </div>
	            <div class="form-group">
	                <label for="email">Email</label>
	                <input type="email" id="email" name="email" required>
	                <i class="fa fa-envelope"></i>
	            </div>
	            <div class="form-group">
	                <label for="password">Password</label>
	                <input type="password" id="password" name="password" required>
	                <i class="fa fa-lock"></i>
	            </div>
	            <button type="submit" class="register-btn">Register</button>
	        </form>
	    </div>
	</body>
	</html>