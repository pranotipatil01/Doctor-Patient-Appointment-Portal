<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="HC.User" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Users</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        .table>tbody {
    
    text-align: center;
}
    </style>
</head>
<body>
<center>
    <h1 class="text-bg-primary py-2 text-center" >View Users</h1>
    
    <!-- Display messages or errors -->
    <%
        String message = (String) request.getAttribute("message");
        String error = (String) request.getAttribute("error");
        if (message != null) {
    %>
        <p style="color: green;"><%= message %></p>
    <%
        }
        if (error != null) {
    %>
        <p style="color: red;"><%= error %></p>
    <%
        }
    %>
    
    <table class=" table table-striped">
        <tr>
        <thead class="table-dark text-center">
            <th>ID</th>
            <th>Username</th>
            <th>Email</th>
            <th>Actions</th>
            </thead>
        </tr>
        <%
            List<User> users = (List<User>) request.getAttribute("users");
            if (users != null && !users.isEmpty()) {
                for (User user : users) {
        %>
            <tr>
                <td><%= user.getUser_id() %></td>
                <td><%= user.getUsername() %></td>
                <td><%= user.getEmail() %></td>
                <td>
                    <button type="button" class="btn btn-success"><a class="text-white text-decoration-none" href="admin?action=editUser&id=<%= user.getUser_id() %>">Edit  <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16">
  <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
  <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5z"/>
</svg></a></button> |
                    <button  type="button" class="btn btn-danger"><a class="text-white text-decoration-none" href="admin?action=deleteUser&id=<%= user.getUser_id() %>" onclick="return confirm('Are you sure you want to delete this user?')">Delete  <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash-fill" viewBox="0 0 16 16">
  <path d="M2.5 1a1 1 0 0 0-1 1v1a1 1 0 0 0 1 1H3v9a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V4h.5a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H10a1 1 0 0 0-1-1H7a1 1 0 0 0-1 1zm3 4a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 .5-.5M8 5a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7A.5.5 0 0 1 8 5m3 .5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 1 0"/>
</svg> </a></button>
                   
                       
                </td>
            </tr>
        <%
                }
            } else {
        %>
            <tr>
                <td colspan="4">No users available.</td>
            </tr>
        <%
            }
        %>
    </table>
    <br>
   <button  type="button" class="btn btn-primary"><a class="text-white text-decoration-none" href="adminDashboard.jsp">Back to Dashboard</a></button>
   </center>
</body>
</html>
