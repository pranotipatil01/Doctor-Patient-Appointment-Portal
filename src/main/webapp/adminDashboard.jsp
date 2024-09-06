<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Admin Dashboard</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">


<style>
.nav-pills .nav-link.active {
	color: #182dcc;
	background-color: #fff;
}

.nav-link {
	color: #182dcc;
	background-color: #fff;
	margin: 3px;
}
</style>
</head>

<body>

	<div class=" text-bg-primary text-center">
		<h1 class="m-0">ADMIN DASHBOARD</h1>
	</div>


	<div class="container-fluid p-0">


		<nav class="navbar navbar-expand-lg  navbar bg-primary ">
			<div class="container-fluid ">
				<a class="navbar-brand text-white" href="index.jsp">
				<b>PROMEDI</b></a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
						<li class="nav-item me-3">
							<h5 class="text-white">
								<%
								// Retrieve the username from the session
								String username = (String) session.getAttribute("username");

								// Check if username is not null before displaying it
								if (username != null) {
									out.print("Welcome " + username);
								} else {
									out.print("User not logged in");
								}
								%>
							</h5>
						</li>
						<li class="nav-item">
							<button class="btn btn-danger ">
								<a class="text-white text-decoration-none" href="logout.jsp">Logout <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-box-arrow-right" viewBox="0 0 16 16">
  <path fill-rule="evenodd" d="M10 12.5a.5.5 0 0 1-.5.5h-8a.5.5 0 0 1-.5-.5v-9a.5.5 0 0 1 .5-.5h8a.5.5 0 0 1 .5.5v2a.5.5 0 0 0 1 0v-2A1.5 1.5 0 0 0 9.5 2h-8A1.5 1.5 0 0 0 0 3.5v9A1.5 1.5 0 0 0 1.5 14h8a1.5 1.5 0 0 0 1.5-1.5v-2a.5.5 0 0 0-1 0z"/>
  <path fill-rule="evenodd" d="M15.854 8.354a.5.5 0 0 0 0-.708l-3-3a.5.5 0 0 0-.708.708L14.293 7.5H5.5a.5.5 0 0 0 0 1h8.793l-2.147 2.146a.5.5 0 0 0 .708.708z"/>
</svg></a>
							</button>
						</li>


					</ul>

				</div>
			</div>
		</nav>
	</div>


	<div class="container-fluid p-0">
		<div class="d-flex align-items-start">
			<div class="col-2 text-bg-primary"
				style="height: 459px; padding: 10px 0px;">
				<div class="nav flex-column nav-pills me-3" id="v-pills-tab"
					role="tablist" aria-orientation="vertical">
					<button class="nav-link active btn-lg" id="v-pills-deparment-tab"
						data-bs-toggle="pill" data-bs-target="#v-pills-deparment"
						type="button" role="tab" aria-controls="v-pills-deparment"
						aria-selected="true">Department</button>
					<button class="nav-link btn-lg" id="v-pills-doctor-tab"
						data-bs-toggle="pill" data-bs-target="#v-pills-doctor"
						type="button" role="tab" aria-controls="v-pills-doctor"
						aria-selected="true">Doctor</button>
					<button class="nav-link btn-lg" id="v-pills-patient-tab"
						data-bs-toggle="pill" data-bs-target="#v-pills-patient"
						type="button" role="tab" aria-controls="v-pills-patient"
						aria-selected="false">Patient</button>

					<button class="nav-link  btn-lg" id="v-pills-appointment-tab"
						data-bs-toggle="pill" data-bs-target="#v-pills-appointment"
						type="button" role="tab" aria-controls="v-pills-appointment"
						aria-selected="false">Appointment</button>

				</div>
			</div>
			<div class="tab-content m-3" id="v-pills-tabContent">
				<div class="tab-pane fade show active" id="v-pills-deparment"
					role="tabpanel" aria-labelledby="v-pills-deparment-tab"
					tabindex="0">

					<div class="container ms-5">
						<a href="admin?action=viewDepartments" type="button"
							class="btn btn-success me-3 btn-lg">view Departments <svg xmlns="http://www.w3.org/2000/svg" width="19" height="18" fill="currentColor" class="bi bi-eye-fill" viewBox="0 0 16 16">
  <path d="M10.5 8a2.5 2.5 0 1 1-5 0 2.5 2.5 0 0 1 5 0"/>
  <path d="M0 8s3-5.5 8-5.5S16 8 16 8s-3 5.5-8 5.5S0 8 0 8m8 3.5a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7"/>
</svg></a>
 <a href="adddepartment.jsp" type="button" class="btn btn-warning btn-lg">Add
							Department <svg xmlns="http://www.w3.org/2000/svg" width="18" height="20" fill="currentColor" class="bi bi-plus-circle-fill" viewBox="0 0 16 16">
  <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0M8.5 4.5a.5.5 0 0 0-1 0v3h-3a.5.5 0 0 0 0 1h3v3a.5.5 0 0 0 1 0v-3h3a.5.5 0 0 0 0-1h-3z"/>
</svg></a>
					</div>

				</div>
				<div class="tab-pane fade show" id="v-pills-doctor" role="tabpanel"
					aria-labelledby="v-pills-doctor-tab" tabindex="0">

					<div class="container ms-5">
						<a href="admin?action=view" type="button" class="btn  btn-success me-3 btn-lg">view
							Doctor <svg xmlns="http://www.w3.org/2000/svg" width="19" height="18" fill="currentColor" class="bi bi-eye-fill" viewBox="0 0 16 16">
  <path d="M10.5 8a2.5 2.5 0 1 1-5 0 2.5 2.5 0 0 1 5 0"/>
  <path d="M0 8s3-5.5 8-5.5S16 8 16 8s-3 5.5-8 5.5S0 8 0 8m8 3.5a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7"/>
</svg></a> <a href="doctor_register.jsp" type="button"
							class="btn btn-warning btn-lg">Add Doctor <svg xmlns="http://www.w3.org/2000/svg" width="18" height="20" fill="currentColor" class="bi bi-plus-circle-fill" viewBox="0 0 16 16">
  <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0M8.5 4.5a.5.5 0 0 0-1 0v3h-3a.5.5 0 0 0 0 1h3v3a.5.5 0 0 0 1 0v-3h3a.5.5 0 0 0 0-1h-3z"/>
</svg></a>

					</div>

				</div>
				<div class="tab-pane fade show" id="v-pills-patient" role="tabpanel"
					aria-labelledby="v-pills-patient-tab" tabindex="0">

					<div class="container ms-5">
						<a href="admin?action=viewUsers" type="button"
							class="btn btn-success btn-lg">view Patients <svg xmlns="http://www.w3.org/2000/svg" width="19" height="18" fill="currentColor" class="bi bi-eye-fill" viewBox="0 0 16 16">
  <path d="M10.5 8a2.5 2.5 0 1 1-5 0 2.5 2.5 0 0 1 5 0"/>
  <path d="M0 8s3-5.5 8-5.5S16 8 16 8s-3 5.5-8 5.5S0 8 0 8m8 3.5a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7"/>
</svg></a>
					</div>
				</div>

				<div class="tab-pane fade show" id="v-pills-appointment"
					role="tabpanel" aria-labelledby="v-pills-appointment-tab"
					tabindex="0">

					<div class="container ms-5">
						<a href="admin?action=viewAppointment" type="button"
							class="btn btn-success btn-lg">view Appointments <svg xmlns="http://www.w3.org/2000/svg" width="19" height="18" fill="currentColor" class="bi bi-eye-fill" viewBox="0 0 16 16">
  <path d="M10.5 8a2.5 2.5 0 1 1-5 0 2.5 2.5 0 0 1 5 0"/>
  <path d="M0 8s3-5.5 8-5.5S16 8 16 8s-3 5.5-8 5.5S0 8 0 8m8 3.5a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7"/>
</svg></a>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>
</body>

</html>
