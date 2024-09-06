<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="HC.Department" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Department</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        .form-container {
            max-width: 500px;
            margin: 50px auto;
            padding: 20px;
            box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.2);
            border-radius: 10px;
            background-color: #f8f9fa;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1 class="text-center mt-5">Edit Department</h1>
        <div class="form-container">
            <%
                Department department = (Department) request.getAttribute("department");
                if (department == null) {
            %>
                <p class="text-danger">Department not found.</p>
            <%
                } else {
            %>
                <form action="admin" method="post">
                    <input type="hidden" name="action" value="editDepartment">
                    <input type="hidden" name="department_id" value="${department.department_Id}">
                    <div class="form-group">
                        <label for="department_name">Department Name:</label>
                        <input type="text" class="form-control" id="department_name" name="department_name" value="${department.department_Name}" required>
                    </div>
                    <button type="submit" class="btn btn-primary btn-block">Update Department</button>
                </form>
            <%
                }
            %>
            <br>
            <a href="admin?action=viewDepartments" class="btn btn-secondary btn-block">Back to Departments</a>
        </div>
    </div>
    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.0.7/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
