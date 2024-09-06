<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.servlet.http.*" %>
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
                Integer doctorId = (Integer) session.getAttribute("doctorId");
                if (doctorId != null) {
                    try {
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/healthcare", "root", "Pranoti3642");
                        PreparedStatement ps = con.prepareStatement("SELECT * FROM doctors WHERE doctor_id = ?");
                        ps.setInt(1, doctorId);
                        ResultSet rs = ps.executeQuery();
                        
                        if (rs.next()) {
            %>
            <p><strong>ID:</strong> <%= rs.getInt("doctor_id") %></p>
            <p><strong>Name:</strong> <%= rs.getString("name") %></p>
            <p><strong>Department:</strong> <%= rs.getInt("department_id") %></p>
            <p><strong>Email:</strong> <%= rs.getString("email") %></p>
            <p><strong>Phone:</strong> <%= rs.getString("phone") %></p>
            <%
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
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
