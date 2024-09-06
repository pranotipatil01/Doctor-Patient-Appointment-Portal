<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Doctor Dashboard</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
    
      .card{
        
         background-image: url("images/hm.jpg");
       background-position: center;
        background-size: cover;
         background-position: center;
            background-repeat: no-repeat;
            height:437px;
           
        }
        
        button{
        padding: 0;
         border: none;
         }
    
        .btn-group {
            display: flex;
            flex-direction: column;
            align-items: flex-start;
            
        }
        @media (min-width: 768px) {
            .btn-group {
                flex-direction: row;
                justify-content: space-around;
            }
        }
      
    </style>
</head>
<body>
  
  
  <div class=" bg-primary text-center">
		<h1 class="m-0 text-white">DOCTOR DASHBOARD</h1>
	</div>


	
	<div class="container-fluid p-0">


		<nav class="navbar navbar-expand-lg  navbar bg-warning ">
			<div class="container-fluid ">
				<a class="navbar-brand text-white" href="index.jsp">PROMEDI</a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav  ms-auto mb-2 mb-lg-0">
						<li class="nav-item me-3">
							<h5 class="text-white">
								<%
    String doctorName = (String) session.getAttribute("doctorName");
    if (doctorName != null) {
%>
    <h3>Welcome, <%= doctorName %>!</h3>
<%
    } else {
        // Redirect to login page or show a message
        response.sendRedirect("doctor_login.jsp");
    }
%>
							</h5>
						</li>
						<li class="nav-item">
							<button class="btn btn-danger ">
								<a class="text-white text-decoration-none" href="logout.jsp">Logout</a>
							</button>
						</li>


					</ul>

				</div>
			</div>
		</nav>


		
	</div>
        <%
            Integer doctorId = (Integer) session.getAttribute("doctorId");
            if (doctorId != null) {
        %>
        <div class="card">
            <div class="card-body">
                <div class="btn-group mt-4">
                    <button ><a class="btn btn-primary btn-lg d-inline" href="viewProfile.jsp">View Profile 
                   <svg xmlns="http://www.w3.org/2000/svg" width="19" height="18" fill="currentColor" class="bi bi-eye-fill" viewBox="0 0 16 16">
  <path d="M10.5 8a2.5 2.5 0 1 1-5 0 2.5 2.5 0 0 1 5 0"/>
  <path d="M0 8s3-5.5 8-5.5S16 8 16 8s-3 5.5-8 5.5S0 8 0 8m8 3.5a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7"/>
</svg></a> <a> </a></button>
                    <button><a class="btn btn-secondary btn-lg d-inline" href="updateProfile.jsp">Update Profile
                    <svg xmlns="http://www.w3.org/2000/svg" width="18" height="19" fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16">
  <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
  <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5z"/>
</svg></a></button>
                    <button><a class="btn btn-success btn-lg d-inline" href="viewDoctorAppointments">View Appointments
                    <svg xmlns="http://www.w3.org/2000/svg" width="19" height="18" fill="currentColor" class="bi bi-eye-fill" viewBox="0 0 16 16">
  <path d="M10.5 8a2.5 2.5 0 1 1-5 0 2.5 2.5 0 0 1 5 0"/>
  <path d="M0 8s3-5.5 8-5.5S16 8 16 8s-3 5.5-8 5.5S0 8 0 8m8 3.5a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7"/>
</svg></a> <a></a></button>
                </div>
            </div>
        </div>
        <%
            } else {
                response.sendRedirect("doctor_login.jsp");
            }
        %>
  
    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
