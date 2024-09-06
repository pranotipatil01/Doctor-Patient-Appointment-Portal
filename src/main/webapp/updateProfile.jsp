<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.servlet.http.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Profile</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        .form-container {
            max-width: 600px;
            margin: 50px auto;
            padding: 20px;
            box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.2);
            border-radius: 10px;
            background-color: #f8f9fa;3
        }
        
        
  body{
        
         background-image: url("images/sm.jpg");
       background-position: center;
        background-size: cover;
         background-position: center;
            background-repeat: no-repeat;
            height:400px;
            width:100%
            
       }
         
    </style>
</head>
<body>
    <div class="container">
        <h1 class="text-center mt-5">Update Profile</h1>
        <div class="form-container">
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
            <form action="updateDoctorProfile" method="post">
                <div class="form-group">
                    <label for="name">Name:</label>
                    <input type="text" class="form-control" id="name" name="name" value="<%= rs.getString("name") %>" required>
                </div>
                <div class="form-group">
                    <label for="department_id">Department:</label>
                    <input type="text" class="form-control" id="department_id" name="department_id" value="<%= rs.getInt("department_id") %>" required>
                </div>
                <div class="form-group">
                    <label for="email">Email:</label>
                    <input type="email" class="form-control" id="email" name="email" value="<%= rs.getString("email") %>" required>
                </div>
                <div class="form-group">
                    <label for="phone">Phone:</label>
                    <input type="text" class="form-control" id="phone" name="phone" value="<%= rs.getString("phone") %>" required>
                </div>
                <button type="submit" class="btn btn-primary btn-block">Update</button>
            </form>
            <%
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                } else {
                    response.sendRedirect("doctor_login.jsp");
                }
            %>
            <br>
            <a href="doctorDashboard.jsp" class="btn btn-secondary btn-block">Back to Dashboard</a>
        </div>
    </div>
    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.0.7/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
