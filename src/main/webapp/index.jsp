<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Promedi</title>
    <link rel="stylesheet" href="css/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  </head>
  <body>
    <div class="container-fluid">
         <!-- Navbar -->
         <div class="navbar-container header-sticky ">
            <nav class="navbar navbar-expand-lg navbar-light">
                <div class="container">
                    <a class="navbar-brand" href="index.jsp">
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
                                <a class="nav-link" href="#">
                                    Home
                                </a>

                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="">About</a>
                            </li>

                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                                    aria-haspopup="true" aria-expanded="false">
                                    Departments
                                </a>
                              <!--   <div class="dropdown-menu">
                                    <a class="dropdown-item" href="service-details.html">Cardiology</a>
                                    <a class="dropdown-item" href="service-details.html">Gynecology</a>
                                    <a class="dropdown-item" href="service-details.html">Neurology</a>
                                    <a class="dropdown-item" href="service-details.html">Orthopedics</a>
                                    <a class="dropdown-item" href="service-details.html">Gastrology</a>
                                    <a class="dropdown-item" href="service-details.html">Pulmonology</a>
                                    <a class="dropdown-item" href="service-details.html">Laboratory</a>
                                    <a class="dropdown-item" href="service-details.html">Urology</a>
                                </div>-->
                            </li>

                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                                    aria-haspopup="true" aria-expanded="false">
                                    Pages
                                </a>
                               <!-- <div class="dropdown-menu">
                                    <a class="dropdown-item" href="services.html">Services</a>
                                    <a class="dropdown-item" href="service-details.html">Service Details</a>
                                    <a class="dropdown-item" href="doctors.html">Our Doctor</a>
                                    <a class="dropdown-item" href="doctors-details.html">Single Doctor</a>
                                    <a class="dropdown-item" href="appointment.html">Book Appoinment</a>
                                    <a class="dropdown-item" href="faq.html">FAQ</a>
                                    <a class="dropdown-item" href="error.html">Error 404</a>
                                </div>  --> 
                            </li>

                               </li>
                              
                               <li class="nav-item">
                                <a class="nav-link" href="">Blog</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="">Contact</a>
                            </li>
                        </ul>

                        <div class="appointment-inline mx-lg-5">
                            
                           <ul type="list-group-item">
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle appointment-btn" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                  Login
                                </a>
                                <ul class="dropdown-menu">
                                  <li><a class="dropdown-item" href="admin.jsp">Admin</a></li>
                                   <li><a class="dropdown-item" href="doctor_login.jsp">Doctor</a></li>
                                  <li><a class="dropdown-item" href="user_login.jsp">Patient</a></li>
                                  
                                </ul>
                              </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </nav>
        </div>
        <!-- End Navbar -->
        <!-- Hero Slider -->
        <div id="carouselExampleCaptions" class="carousel slide ">
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active"
                    aria-current="true" aria-label="Slide 1"></button>
                <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1"
                    aria-label="Slide 2"></button>
                <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2"
                    aria-label="Slide 3"></button>
            </div>
            <div class="carousel-inner home">
                <div class="carousel-item active">
                    <img src="images/hospita05.jpg" class="d-block w-100" alt="...">
                    <div class="carousel-caption d-none d-md-block">
                        <h1 >We Always Care Your <br> Health</h1>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="images/hospita04.jpg" class="d-block w-100" alt="...">
                    <div class="carousel-caption d-none d-md-block">
                        <h1>Best Care & Better <br> Doctor</h1>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="images/hospita03.jpg" class="d-block w-100" alt="...">
                    <div class="carousel-caption d-none d-md-block">
                        <h1>We Always Care Your <br> Health</h1>
                    </div>
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions"
                data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions"
                data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>

        <!-- End Hero Slider -->
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
  </body></html>