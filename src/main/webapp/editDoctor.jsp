<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="HC.Doctor" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Doctor</title>
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
        <h1 class="text-center mt-5">Edit Doctor</h1>
        <div class="form-container">
            <%
                Doctor doctor = (Doctor) request.getAttribute("doctor");
                if (doctor == null) {
            %>
                <p class="text-danger">Doctor not found.</p>
            <%
                } else {
            %>
                <form action="admin" method="post">
                    <input type="hidden" name="action" value="edit">
                    <input type="hidden" name="doctor_id" value="<%= doctor.getDoctor_id() %>">
                    <div class="form-group">
                        <label for="name">Name:</label>
                        <input type="text" class="form-control" id="name" name="name" value="<%= doctor.getName() %>" required>
                    </div>
                    <div class="form-group">
                        <label for="department">Department ID:</label>
                        <input type="text" class="form-control" id="department" name="department" value="<%= doctor.getDepartment() %>" required>
                    </div>
                    <div class="form-group">
                        <label for="email">Email:</label>
                        <input type="email" class="form-control" id="email" name="email" value="<%= doctor.getEmail() %>" required>
                    </div>
                    <div class="form-group">
                        <label for="phone">Phone:</label>
                        <input type="text" class="form-control" id="phone" name="phone" value="<%= doctor.getPhone() %>" required>
                    </div>
                    <div class="form-group">
                        <label for="password">Password:</label>
                        <input type="text" class="form-control" id="password" name="password" value="<%= doctor.getPassword() %>" required>
                    </div>
                    <button type="submit" class="btn btn-primary btn-block">Update</button>
                </form>
            <%
                }
            %>
            <br>
            <a href="admin?action=view" class="btn btn-secondary btn-block">Back to View Doctors</a>
        </div>
    </div>
    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.0.7/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
