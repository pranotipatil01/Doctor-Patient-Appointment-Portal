<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Make an Appointment</title>
     <script>
        function loadDoctors() {
            var departmentId = document.getElementById("department").value;
            var xhr = new XMLHttpRequest();
            xhr.open("GET", "getdoctors?department_id=" + departmentId, true);
            xhr.onreadystatechange = function () {
                if (xhr.readyState == 4 && xhr.status == 200) {
                    document.getElementById("doctor").innerHTML = xhr.responseText;
                }
            };
            xhr.send();
        }
    </script>
</head>
<body>
    <h2>Make an Appointment</h2>
    <form action="MakeAppointment" method="post">
        <label for="patient_name">Patient Name:</label>
        <input type="text" id="patient_name" name="patient_name" required><br><br>

        <label for="age">Age:</label>
        <input type="number" id="age" name="age" required><br><br>

        <label for="gender">Gender:</label>
        <select id="gender" name="gender" required>
            <option value="">Select Gender</option>
            <option value="Male">Male</option>
            <option value="Female">Female</option>
            <option value="Other">Other</option>
        </select><br><br>

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required><br><br>

        <label for="phone">Phone:</label>
        <input type="text" id="phone" name="phone" required><br><br>

        <label for="department">Department:</label>
        <select id="department" name="department" onchange="loadDoctors()" required>
                    <option value="">Select Department</option>
                        <% 
                try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/healthcare", "root", "Pranoti3642");
                    PreparedStatement ps = con.prepareStatement("SELECT * FROM departments");
                    ResultSet rs = ps.executeQuery();
                    while (rs.next()) {
            %>
                        <option value="<%= rs.getInt("department_id") %>"><%= rs.getString("department_name") %></option>
            <%
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            %>

        </select><br><br>

        <label for="doctor">Doctor:</label>
        <select id="doctor" name="doctor" required>
            <option value="">Select Doctor</option>
             
	          
        </select><br><br>

        <label for="appointment_date">Appointment Date:</label>
        <input type="date" id="appointment_date" name="appointment_date" required><br><br>

        <input type="submit" value="Make Appointment">
    </form>
</body>
</html>