<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="HC.Doctor" %>
<%@ page import="javax.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Profile</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        .profile-container {
            max-width: 600px;
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
        <h1 class="text-center mt-5">View Profile</h1>
        <div class="profile-container">
            <%
                Doctor doctor = (Doctor) session.getAttribute("doctors");
                if (doctor != null) {
            %>
            <p><strong>ID:</strong> <%= doctor.getDoctor_id() %></p>
            <p><strong>Name:</strong> <%= doctor.getName() %></p>
            <p><strong>Department:</strong> <%= doctor.getDepartment() %></p>
            <p><strong>Email:</strong> <%= doctor.getEmail() %></p>
            <p><strong>Phone:</strong> <%= doctor.getPhone() %></p>
            <%
                } else {
                    response.sendRedirect("doctor_login.jsp");
                }
            %>
            <a href="doctorDashboard.jsp" class="btn btn-secondary btn-block mt-4">Back to Dashboard</a>
        </div>
    </div>
    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.0.7/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
