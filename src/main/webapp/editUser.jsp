<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="HC.User" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit User</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        .form-container {
            max-width: 500px;
            margin: 50px auto;
            padding: 20px;
            box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.2);
            border-radius: 10px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1 class="text-center mt-5">Edit User</h1>
        <div class="form-container">
            <%
                User user = (User) request.getAttribute("user");
                if (user == null) {
            %>
                <p class="text-danger">User not found.</p>
            <%
                } else {
            %>
                <form action="admin" method="post">
                    <input type="hidden" name="action" value="editUser">
                    <input type="hidden" name="user_id" value="<%= user.getUser_id() %>">
                    <div class="form-group">
                        <label for="username">Username:</label>
                        <input type="text" class="form-control" id="username" name="username" value="<%= user.getUsername() %>" required>
                    </div>
                    <div class="form-group">
                        <label for="email">Email:</label>
                        <input type="email" class="form-control" id="email" name="email" value="<%= user.getEmail() %>" required>
                    </div>
                    <div class="form-group">
                        <label for="password">Password:</label>
                        <input type="text" class="form-control" id="password" name="password" value="<%= user.getPassword() %>" required>
                    </div>
                    <button type="submit" class="btn btn-primary btn-block">Update User</button>
                </form>
            <%
                }
            %>
            <br>
            <a href="admin?action=viewUsers" class="btn btn-secondary btn-block">Back to View Users</a>
        </div>
    </div>
    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.0.7/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
