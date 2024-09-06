<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="HC.Appointment" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Appointments</title>
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
    <h1 class="text-bg-primary py-2 text-center">View Appointments</h1>

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

    <table class="table table-striped ">
        <tr>
            <th>ID</th>
            <th>Patient Name</th>
            <th>Age</th>
            <th>Gender</th>
            <th>Email</th>
            <th>Phone</th>
            <th>Appointment Date</th>
            <th>Prescription</th>
           
        </tr>
        <%
            List<Appointment> appointments = (List<Appointment>) request.getAttribute("appointments");
            if (appointments != null && !appointments.isEmpty()) {
                for (Appointment appointment : appointments) {
        %>
            <tr>
                <td><%= appointment.getAppointment_id() %></td>
                <td><%= appointment.getPatient_name() %></td>
                <td><%= appointment.getAge() %></td>
                <td><%= appointment.getGender() %></td>
                <td><%= appointment.getPatient_email() %></td>
                <td><%= appointment.getPatient_phone() %></td>
                <td><%= appointment.getAppointment_date() %></td>
                <td><%= appointment.getPrescription() %></td>
                
            </tr>
        <%
                }
            } else {
        %>
            <tr>
                <td colspan="9">No appointments available.</td>
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
