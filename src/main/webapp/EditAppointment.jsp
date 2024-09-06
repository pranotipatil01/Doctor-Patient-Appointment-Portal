<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="HC.Appointment" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Appointment</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        .form-container {
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
        <h1 class="text-center mt-5">Edit Appointment</h1>
        <div class="form-container">
            <%
                Appointment appointment = (Appointment) request.getAttribute("appointment");
                if (appointment != null) {
            %>
            <form action="editAppointment" method="post">
            <input type="hidden" name="email" value="${user.email}" />
                <input type="hidden" name="appointmentId" value="<%= appointment.getAppointment_id() %>"/>
                <div class="form-group">
                    <label for="patient_name">Patient Name:</label>
                    <input type="text" class="form-control" id="patient_name" name="patient_name" value="<%= appointment.getPatient_name() %>" required/>
                </div>
                <div class="form-group">
                    <label for="age">Age:</label>
                    <input type="number" class="form-control" id="age" name="age" value="<%= appointment.getAge() %>" required/>
                </div>
                <div class="form-group">
                    <label for="gender">Gender:</label>
                    <input type="text" class="form-control" id="gender" name="gender" value="<%= appointment.getGender() %>" required/>
                </div>
                <div class="form-group">
                    <label for="patient_email">Email:</label>
                    <input type="email" class="form-control" id="patient_email" name="patient_email" value="<%= appointment.getPatient_email() %>" required/>
                </div>
                <div class="form-group">
                    <label for="patient_phone">Phone:</label>
                    <input type="text" class="form-control" id="patient_phone" name="patient_phone" value="<%= appointment.getPatient_phone() %>" required/>
                </div>
                <div class="form-group">
                    <label for="appointment_date">Appointment Date:</label>
                    <input type="text" class="form-control" id="appointment_date" name="appointment_date" value="<%= appointment.getAppointment_date() %>" required/>
                </div>
                <div class="form-group">
                    <label for="prescription">Prescription:</label>
                    <input type="text" class="form-control" id="prescription" name="prescription" value="<%= appointment.getPrescription() %>" required/>
                </div>
                <button type="submit" class="btn btn-primary btn-block">Update Appointment</button>
            </form>
            <% } else { %>
                <p class="text-danger">No appointment details available.</p>
            <% } %>
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
