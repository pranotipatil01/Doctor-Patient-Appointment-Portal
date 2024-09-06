<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>PROMEDI</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="icofont/icofont.css">
    <link rel="stylesheet" href="icofont/icofont.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@icon/icofont@1.0.1-alpha.1/icofont.min.css">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css"
        integrity="sha512-tS3S5qG0BlhnQROyJXvNjeEM4UpMXHrQfTGmbQ1gKmelCxlSEBUaxhRBj/EFTzpbP4RVSrpEikbmdJobCvhE3g=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
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

     <!-- Main header -->
     <header class="main-header">
        

       <!-- Navbar -->
        <div class="navbar-container header-sticky">
            <nav class="navbar navbar-expand-lg navbar-light">
                <div class="container">
                    <a class="navbar-brand" href="home.jsp">
                        <img src="images/hospita01.png" alt="Logo">
                    </a>

                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                        data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                        aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav m-auto">
                            <li class="nav-item active">
                                <a class="nav-link" href="home.jsp">
                                    Home
                                </a>

                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="about.jsp">About</a>
                            </li>

                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                                    aria-haspopup="true" aria-expanded="false">
                                    Departments
                                </a>
                                <div class="dropdown-menu">
                                    <a class="dropdown-item" href="service-details.html">Cardiology</a>
                                    <a class="dropdown-item" href="service-details.html">Gynecology</a>
                                    <a class="dropdown-item" href="service-details.html">Neurology</a>
                                    <a class="dropdown-item" href="service-details.html">Orthopedics</a>
                                    <a class="dropdown-item" href="service-details.html">Gastrology</a>
                                    <a class="dropdown-item" href="service-details.html">Pulmonology</a>
                                    <a class="dropdown-item" href="service-details.html">Laboratory</a>
                                    <a class="dropdown-item" href="service-details.html">Urology</a>
                                </div>
                            </li>

                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                                    aria-haspopup="true" aria-expanded="false">
                                    Pages
                                </a>
                                <div class="dropdown-menu">
                                    <a class="dropdown-item" href="services.html">Services</a>
                                    <a class="dropdown-item" href="service-details.html">Service Details</a>
                                    <a class="dropdown-item" href="doctors.html">Our Doctor</a>
                                    <a class="dropdown-item" href="doctors-details.html">Single Doctor</a>
                                    <a class="dropdown-item" href="appointment.jsp">Book Appoinment</a>
                                    <a class="dropdown-item" href="faq.html">FAQ</a>
                                    <a class="dropdown-item" href="error.html">Error 404</a>
                                </div>
                            </li>
                              
                               <li class="nav-item">
                                <a class="nav-link" href="blog.jsp">Blog</a>
                            </li>
                            

                            <li class="nav-item">
                                <a class="nav-link" href="contact.jsp">Contact</a>
                            </li>
                        </ul>

                        <div class="appointment-inline mx-lg-5">


                            <div class="appointment-inline my-lg-0">
                                <a href="appointment.jsp" class="appointment-btn">
                                    Make an Appointment 
                                    <i class="icofont-simple-right"></i>
                                </a>
                            </div>

                            </ul>
                        </div>
                    </div>
                </div>
            </nav>
        </div>
        <!-- End Navbar -->
    </header>
    <!-- End Main header -->

    <!-- Page Title -->
    <div class="page-title">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-lg-7">
                    <h2>Appointment</h2>
                </div>

                <div class="col-md-6 col-lg-5">
                    <ul>
                        <li><a href="home.html">Home</a></li>
                        <li>Appointment</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- End Page Title -->
    
    <!-- Appointment Area -->
    <div class="appointment-area">
        <div class="container-fluid"> 
            <div class="row">
                <div class="col-md-12 col-lg-5 p-0"> 
                    <div class="contant-number">
                        <h3><i class="icofont-phone"></i>
                            <a href="tel:16045555555"> 1-604-555-5555</a>
                        </h3>
                    </div>
                </div>
                <div class="col-md-12 col-lg-7 p-0"> 
                    <div class="appointment-form">
                        <h2 class="title">Make an Appointment</h2>
                        <form action="MakeAppointment" method="post">
                            <div class="row"> 
                                <div class="col-md-6 col-lg-6 pr-10"> 
                                    <div class="form-group">
                                        <input type="text" class="form-control" id="id_name" name="patient_name" placeholder="Name">
                                    </div>
                                </div>
                                
                                <div class="col-md-6 col-lg-6 pr-10"> 
                                    <div class="form-group">
                                        <input type="number" class="form-control" id="id_age" name="age" placeholder="Age">
                                    </div>
                                </div>

                                <div class="col-md-6 col-lg-6 pl-10"> 
                                    <div class="form-group">
                                        <input type="email" class="form-control" id="id_email"name="email" placeholder="Email">
                                    </div>
                                </div>

                                <div class="col-md-6 col-lg-6 pr-10"> 
                                    <div class="form-group">
                                        <input type="text" class="form-control" id="id_phone_number" name="phone" placeholder="Phone Number">
                                    </div>
                                </div>
                                 
                                 
                                 <div class="col-md-6 col-lg-6 pl-10"> 
                                    <div class="form-group">
                                        <select class="form-control"  id="gender" name="gender">
                                            <option value="" selected disabled>Gender</option>
                                            <option value="Male">Male</option>
                                            <option value="Female">Female</option>
                                             <option value="Other">Other</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-6 col-lg-6 pl-10"> 
                                    <div class="form-group">
                                        <select class="form-control" id="department" name="department" onchange="loadDoctors()" >
                                            <option value="" selected disabled>Department</option>
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
                                        </select>
                                    </div>
                                </div>

                                <div class="col-md-6 col-lg-6 pr-10"> 
                                    <div class="form-group">
                                        <select class="form-control" name="doctor"  id="doctor">
                                            <option value="" selected disabled>Doctor</option>
                                            
                                        </select>
                                    </div>
                                </div>

                                <div class="col-md-6 col-lg-6 pl-10"> 
                                    <div class="form-group">
                                        <input type="date" name="appointment_date" class="form-control" id="datepicker" placeholder="Booking Date">
                                    </div>
                                </div>
                            </div>

                           

                            <button type="submit" class="btn book-now-btn">Book Appointment</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <!-- End Appointment Area -->

    <!-- Footer -->
    <footer class="pt-100 pb-50">
        <div class="container">
            <div class="row">
                <div class="col-sm-12 col-md-12 col-lg-4">
                    <div class="footer-widget">
                        <a href="#" class="footer-logo">
                            <img src="images/hospita01.png" alt="Logo">
                        </a>

                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. </p>

                        <ul class="socials-links">
                            <li>
                                <a href="https://www.facebook.com/login/" target="_blank">
                                    <i class="icofont-facebook"></i>
                                </a>
                            </li>
                            <li>
                                <a href="https://twitter.com/i/flow/login" target="_blank">
                                    <i class="icofont-twitter"></i>
                                </a>
                            </li>
                            <li>
                                <a href="https://www.linkedin.com/login" target="_blank">
                                    <i class="icofont-linkedin"></i>
                                </a>
                            </li>
                            <li><a href="https://www.google.com/" target="_blank">
                                <i class="icofont-google-plus"></i>
                            </a></li>
                        </ul>
                    </div>
                </div>

                <div class="col-sm-6 col-md-4 col-lg-2">
                    <div class="footer-widget">
                        <h3>Quick Links</h3>
                        <ul>
                            <li><a href="index.html">Home</a></li>
                            <li><a href="about.html">About</a></li>
                            <li><a href="doctors.html">Doctors</a></li>
                            <li><a href="service-details.html">Gallery</a></li>
                            <li><a href="blog-details.html">Blog</a></li>
                            <li><a href="contact.html">Contact</a></li>
                        </ul>
                    </div>
                </div>

                <div class="col-sm-6 col-md-4 col-lg-3">
                    <div class="footer-widget">
                        <h3>Departments</h3>
                        <ul>
                            <li><a href="service-details.html">Cardiology</a></li>
                            <li><a href="service-details.html">Cardiology</a></li>
                            <li><a href="service-details.html">Cardiology</a></li>
                            <li><a href="service-details.html">Cardiology</a></li>
                            <li><a href="service-details.html">Cardiology</a></li>
                            <li><a href="service-details.html">Cardiology</a></li>
                        </ul>
                    </div>
                </div>

                <div class="col-sm-12 col-md-4 col-lg-3">
                    <div class="footer-widget">
                        <h3>Contact Us</h3>
                        <p>Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas.</p>

                        <div class="foot-contact-info">
                            <i class="icofont-phone"></i>
                            <a href="tel:16045555556">+1-604-555-5556</a>
                            <a href="tel:14556452564">+1-455-645-2564</a>
                        </div>

                        <div class="foot-contact-info">
                            <i class="icofont-email"></i>
                            <a href="/cdn-cgi/l/email-protection#a5cdc0c9c9cae5d5d7cac8c0c1cc8bc6cac8"><span class="__cf_email__" data-cfemail="bfd7dad3d3d0ffcfcdd0d2dadbd691dcd0d2">[email&#160;protected]</span></a>
                            <a href="/cdn-cgi/l/email-protection#036a6d656c4373716c6e66676a2d606c6e"><span class="__cf_email__" data-cfemail="f79e999198b78785989a92939ed994989a">[email&#160;protected]</span></a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="separate-line"></div>

            <div class="row bottom-footer">
                <div class="col-md-6 col-lg-6">
                    <p>© Promedi is Proudly Owned by <a href="https://envytheme.com/" target="_blank">EnvyTheme</a></p>
                </div>
                <div class="col-md-6 col-lg-6">
                    <ul>
                        <li><a href="contact.html">Privac Policy</a></li>
                        <li><a href="contact.html">Terms & Conditions</a></li>
                    </ul>
                </div>
            </div>
        </div>  
    </footer>
    <!-- End Footer -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
    crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"
    integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g=="
    crossorigin="anonymous" referrerpolicy="no-referrer"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"
    integrity="sha512-bPs7Ae6pVvhOSiIcyUClR7/q2OAsRiovw4vAkX+zJbw3ShAeeqezq50RIIcIURq7Oa20rW2n2q+fyXBNcU9lrw=="
    crossorigin="anonymous" referrerpolicy="no-referrer"></script>

    <script src="js/script.js"></script>
</body>

</html>