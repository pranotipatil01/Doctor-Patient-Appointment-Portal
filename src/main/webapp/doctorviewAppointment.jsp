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

  body{
        
         background-image: url("images/pab.webp");
       background-position: center;
        background-size: cover;
         background-position: center;
            background-repeat: no-repeat;
            height:549px;
            width:100%
            
       }
         
    </style>
    
</head>
<body>
<center>
    <h1 class=" text-bg-secondary pb-3">View Appointments</h1>

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
            <th>Actions</th>
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
                <td>
              <button type="button" class="btn btn-success"><a  class="text-white text-decoration-none" href="editAppointment?appointmentId=<%= appointment.getAppointment_id() %>">Add/Edit Prescription</a> </button>
                  <button  type="button" class="btn btn-danger"><a class="text-white text-decoration-none" href="deleteAppointment?appointment_id=<%= appointment.getAppointment_id() %>" onclick="return confirm('Are you sure you want to delete this appointment?');">Delete <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash-fill" viewBox="0 0 16 16">
  <path d="M2.5 1a1 1 0 0 0-1 1v1a1 1 0 0 0 1 1H3v9a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V4h.5a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H10a1 1 0 0 0-1-1H7a1 1 0 0 0-1 1zm3 4a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 .5-.5M8 5a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7A.5.5 0 0 1 8 5m3 .5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 1 0"/>
</svg></a></button>
                </td>
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
  <button  type="button" class="btn btn-primary"><a class="text-white text-decoration-none"href="doctorDashboard.jsp">Back to Dashboard</a></button>
</center>
</body>
</html>
