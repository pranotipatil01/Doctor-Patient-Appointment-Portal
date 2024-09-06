<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>
<link rel="stylesheet" href="css/login.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
 <div class="wrapper">
     <form action="userregister" method="post">
      <h2>Register</h2>
        <div class="input-field">
        <input type="text" id="username" name="username"required>
        <label> Username</label>
      </div>
      <div class="input-field">
        <input type="password" id="password" name="password" required>
        <label>Password</label>
      </div>
      <div class="input-field">
        <input type="email" id="email" name="email" required>
        <label>Email</label>
      </div>
        
      <button type="submit">Register</button>
     
    </form>
</body>
</html>