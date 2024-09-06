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

<body>
    <div class="container-fluid p-0">
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

                        <div class="appointment-inline mx-lg-2">


                            <div class="appointment-inline my-lg-3">
                                <a href="appointment.jsp" class="appointment-btn">
                                    Make an Appointment 
                                    <i class="icofont-simple-right"></i>
                                </a>
                            </div>
                            
                             <div class="appointment-inline my-lg-0">
                                <a href="logout.jsp" class="appointment-btn">
                                    Logout
                                   
                                </a>
                            </div>
                            </ul>
                        </div>
                    </div>
                </div>
            </nav>
        </div>
        <!-- End Navbar -->
        <!-- Hero Slider -->
        <div id="carouselExampleCaptions" class="carousel slide mb-5">
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active"
                    aria-current="true" aria-label="Slide 1"></button>
                <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1"
                    aria-label="Slide 2"></button>
                <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2"
                    aria-label="Slide 3"></button>
            </div>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="images/hospita05.jpg" class="d-block w-100" alt="...">
                    <div class="carousel-caption d-none d-md-block">
                        <h1>We Always Care Your <br> Health</h1>
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
        <!-- Services -->
        <div class="services-area services-box">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 col-lg-4">
                        <div class="single-card">
                            <div class="thumb-img">
                                <img src="images/hospita27.jpg" alt="Service Image" class="img-fluid" />
                            </div>

                            <div class="caption-text text-center">
                                <h3>Emergency Care</h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                                    incididunt ut labore</p>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-6 col-lg-4">
                        <div class="single-card">
                            <div class="thumb-img">
                                <img src="images/hospita29.jpg" alt="Service Image" class="img-fluid" />
                            </div>

                            <div class="caption-text text-center">
                                <h3>Qualified Doctors</h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                                    incididunt ut labore</p>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-6 col-lg-4 offset-md-3 offset-lg-0">
                        <div class="single-card">
                            <div class="thumb-img">
                                <img src="images/hospita28.jpg" alt="Service Image" class="img-fluid" />
                            </div>

                            <div class="caption-text text-center">
                                <h3>24/7 Hours Service</h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                                    incididunt ut labore</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Services -->
        <!-- Welcome Section -->
        <section class="welcome-section ptb-100">
            <div class="container">


                <div class="welcome-inner-content">
                    <div class="row justify-content-center align-items-center">
                        <div class="col-lg-6">
                            <div class="welcome-image">
                                <img src="images/hospita06.jpg" alt="about" class="img-fluid">
                            </div>
                        </div>

                        <div class="col-lg-6">
                            <span>About our medical</span>
                            <h3>Happiness is nothing more than good health and a bad memory</h3>
                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum
                                has been the industry's standard dummy text. Lorem Ipsum is simply dummy text of the
                                printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy
                                text.</p>
                            <ul>
                                <li>Qualified Doctors</li>
                                <li>Outdoor Checkup</li>
                                <li>24/7 Help Center</li>
                                <li>Modern Clinic</li>
                                <li>Emergency Cases</li>
                                <li>Breast Screening</li>
                            </ul>
                            <a href="about.html" class="default-btn">Learn More</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End Welcome section -->

        <!-- Call To Action -->
        <section class="call-to-action">
            <div class="container">
                <div class="row">
                    <div class="col-lg-9">
                        <div class="call-to-action-text">
                            <i class="icofont-first-aid"></i>
                            <h3>Health Care Center</h3>
                            <p>if you have any Emerangcy by health problem contact this <span>No. 035 687 9514</span> or
                                contact form</p>
                        </div>
                    </div>

                    <div class="col-lg-3">
                        <a href="contact.html" class="default-btn">Contact Us</a>
                    </div>
                </div>
            </div>
        </section>
        <!-- End Call To Action -->

        <!-- Departments section -->
        <!-- Departments section -->
        <section class="department-section pt-100 pb-50 gray-bg">
            <div class="container">
                <div class="section-title">
                    <h2>Our Departments</h2>
                    <p>We are ready to build your dream future Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                        Dolorum, beatae. Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
                </div>

                <div class="row">
                    <div class="col-md-4 col-lg-3">
                        <div class="single-department">
                            <i class="icofont-heart-beat"></i>
                            <h3>Cardiology</h3>
                            <p>Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas.</p>
                        </div>
                    </div>
                    <div class="col-md-4 col-lg-3">
                        <div class="single-department">
                            <i class="icofont-brain"></i>
                            <h3>Neurology</h3>
                            <p>Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas.</p>
                        </div>
                    </div>
                    <div class="col-md-4 col-lg-3">
                        <div class="single-department">
                            <i class="icofont-crutch"></i>
                            <h3>Orthopedics</h3>
                            <p>Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas.</p>
                        </div>
                    </div>
                    <div class="col-md-4 col-lg-3">
                        <div class="single-department">
                            <i class="icofont-xray"></i>
                            <h3>Radiology</h3>
                            <p>Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas.</p>
                        </div>
                    </div>
                    <div class="col-md-4 col-lg-3">
                        <div class="single-department">
                            <i class="icofont-surgeon"></i>
                            <h3>Surgery</h3>
                            <p>Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas.</p>
                        </div>
                    </div>
                    <div class="col-md-4 col-lg-3">
                        <div class="single-department">
                            <i class="icofont-laboratory"></i>
                            <h3>Urology</h3>
                            <p>Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas.</p>
                        </div>
                    </div>
                    <div class="col-md-4 col-lg-3">
                        <div class="single-department">
                            <i class="icofont-autism"></i>
                            <h3>Psychosocial</h3>
                            <p>Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas.</p>
                        </div>
                    </div>
                    <div class="col-md-4 col-lg-3">
                        <div class="single-department">
                            <i class="icofont-tooth"></i>
                            <h3>Dental</h3>
                            <p>Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas.</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End Departments section -->

        <!-- End Departments section -->



        <!-- Video Section -->
        <section class="video-section ptb-100">
            <div class="container">
                <div class="section-title white-title">
                    <h2>Watch Our Video</h2>
                    <p>We are ready to build your dream future Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                        Dolorum, beatae. Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
                </div>

                <div class="video-content mb-minus-330">
                    <div class="d-table">
                        <div class="d-tablecell">
                            <div class="sonar-wrapper">
                                <div class="sonar-emitter">
                                    <div class="sonar-wave"></div>
                                    <a href="https://www.youtube.com/watch?v=LFBxRxwY4Qw"
                                        class="play-video popup-youtube">
                                        <i class="icofont-play"></i>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End Video Section -->

        <!-- Counter section -->
        <div class="counter-section pt-100 pb-70 pt-330">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6 col-md-6 col-lg-3">
                        <div class="single-counter">
                            <i class="icofont-simple-smile"></i>
                            <h3 class="counter">25000</h3>
                            <p>Happy Patients</p>
                        </div>
                    </div>

                    <div class="col-sm-6 col-md-6 col-lg-3">
                        <div class="single-counter">
                            <i class="icofont-doctor-alt"></i>
                            <h3 class="counter">180</h3>
                            <p>Experienced Doctors</p>
                        </div>
                    </div>

                    <div class="col-sm-6 col-md-6 col-lg-3">
                        <div class="single-counter">
                            <i class="icofont-operation-theater"></i>
                            <h3 class="counter">1500</h3>
                            <p>Successful Operations</p>
                        </div>
                    </div>

                    <div class="col-sm-6 col-md-6 col-lg-3">
                        <div class="single-counter">
                            <i class="icofont-bed"></i>
                            <h3 class="counter">2800</h3>
                            <p>Numbers of Beds</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End counter section -->

        <!-- Expert Doctors -->
        <section class="expert-doctors ptb-100 gray-bg pb-70">
            <div class="container">
                <div class="section-title">
                    <h2>Our Expert Doctors</h2>
                    <p>We are ready to build your dream future Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                        Dolorum, beatae. Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
                </div>

                <div class="expert-doctors-carousel owl-carousel owl-theme owl-theme-2">
                    <div class="single-card">
                        <div class="thumb-img">
                            <img src="images/hospita10.jpg" alt="Doctor Image" />
                            <div class="hover-social">
                                <div class="d-table">
                                    <div class="d-tablecell">
                                        <ul>
                                            <li>
                                                <a href="https://www.linkedin.com/login" target="_blank">
                                                    <i class="icofont-linkedin"></i>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="https://twitter.com/i/flow/login" target="_blank">
                                                    <i class="icofont-twitter"></i>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="https://www.facebook.com/login/" target="_blank">
                                                    <i class="icofont-facebook"></i>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="caption-text text-center">
                            <h3>Dr. Anym Jackson</h3>
                            <span class="designation mb-10">Dental Specialist</span>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt
                                ut labore</p>
                        </div>
                    </div>

                    <div class="single-card">
                        <div class="thumb-img">
                            <img src="images/hospita11.jpg" alt="Doctor Image" />
                            <div class="hover-social">
                                <div class="d-table">
                                    <div class="d-tablecell">
                                        <ul>
                                            <li>
                                                <a href="https://www.linkedin.com/login" target="_blank">
                                                    <i class="icofont-linkedin"></i>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="https://twitter.com/i/flow/login" target="_blank">
                                                    <i class="icofont-twitter"></i>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="https://www.facebook.com/login/" target="_blank">
                                                    <i class="icofont-facebook"></i>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="caption-text text-center">
                            <h3>Dr. Mark Jacobson</h3>
                            <span class="designation mb-10">Cardiology</span>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt
                                ut labore</p>
                        </div>
                    </div>

                    <div class="single-card">
                        <div class="thumb-img">
                            <img src="images/hospita12.jpg" alt="Doctor Image" />
                            <div class="hover-social">
                                <div class="d-table">
                                    <div class="d-tablecell">
                                        <ul>
                                            <li>
                                                <a href="https://www.linkedin.com/login" target="_blank">
                                                    <i class="icofont-linkedin"></i>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="https://twitter.com/i/flow/login" target="_blank">
                                                    <i class="icofont-twitter"></i>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="https://www.facebook.com/login/" target="_blank">
                                                    <i class="icofont-facebook"></i>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="caption-text text-center">
                            <h3>Dr. Alex Davidson</h3>
                            <span class="designation mb-10">Haematology</span>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt
                                ut labore</p>
                        </div>
                    </div>

                    <div class="single-card">
                        <div class="thumb-img">
                            <img src="images/hospita13.jpg" alt="Doctor Image" />
                            <div class="hover-social">
                                <div class="d-table">
                                    <div class="d-tablecell">
                                        <ul>
                                            <li>
                                                <a href="https://www.linkedin.com/login" target="_blank">
                                                    <i class="icofont-linkedin"></i>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="https://twitter.com/i/flow/login" target="_blank">
                                                    <i class="icofont-twitter"></i>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="https://www.facebook.com/login/" target="_blank">
                                                    <i class="icofont-facebook"></i>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="caption-text text-center">
                            <h3>Dr. Jaka Alex</h3>
                            <span class="designation mb-10">Psychosocial</span>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt
                                ut labore</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Edn Expert Doctors -->

        <!-- Appointment Area -->
        <div class="appointment-area">
            <div class="container-fluid" id="appointment">
                <div class="row">
                    <div class="col-md-12 col-lg-5 p-0">
                        <div class="contant-number">
                            <h3><i class="icofont-phone"></i>
                                <a href="tel:16045555555">1-604-555-5555</a>
                            </h3>
                        </div>
                    </div>
                    <div class="col-md-12 col-lg-7 p-0">
                        <div class="appointment-form">
                            <h2 class="title">Make an Appointment</h2>
                            <form>
                                <div class="row">
                                    <div class="col-md-6 col-lg-6 pr-10">
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="id_name" placeholder="Name">
                                        </div>
                                    </div>

                                    <div class="col-md-6 col-lg-6 pl-10">
                                        <div class="form-group">
                                            <input type="email" class="form-control" id="id_email" placeholder="Email">
                                        </div>
                                    </div>

                                    <div class="col-md-6 col-lg-6 pr-10">
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="id_phone_number"
                                                placeholder="Phone Number">
                                        </div>
                                    </div>

                                    <div class="col-md-6 col-lg-6 pl-10">
                                        <div class="form-group">
                                            <select class="form-control">
                                                <option>Department</option>
                                                <option>Cardiology</option>
                                                <option>Neurology</option>
                                                <option>Orthopedics</option>
                                                <option>Radiology</option>
                                                <option>Surgery</option>
                                                <option>Urology</option>
                                            </select>
                                        </div>
                                    </div>

                                    <div class="col-md-6 col-lg-6 pr-10">
                                        <div class="form-group">
                                            <select class="form-control">
                                                <option>Doctor</option>
                                                <option>Dr. Anym Jackson</option>
                                                <option>Dr. Mark Jacobson</option>
                                                <option>Dr. Alex Davidson</option>
                                                <option>Dr. Jaka Alex</option>
                                            </select>
                                        </div>
                                    </div>

                                    <div class="col-md-6 col-lg-6 pl-10">
                                        <div class="form-group">
                                            <input class="form-control" id="datepicker" placeholder="Booking Date">
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <textarea class="form-control" id="message" rows="4"
                                        placeholder="Message"></textarea>
                                </div>

                                <button type="submit" class="btn book-now-btn">Book Now</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Appointment Area -->

        <!-- Patient Feedback -->
        <!-- <section class="patient-feedback pb-100 ">
            <div class="container">
                <div class="section-title">
                    <h2>Patient Feedback</h2>
                    <p>We are ready to build your dream future Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                        Dolorum, beatae. Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
                </div>

                <div class="feedback-carousel owl-carousel owl-theme owl-theme-2 ">
                    <div class="card mb-3">
                        <div class="row g-0">
                            <div class="col-12 col-md-4">
                                <img src="images/hospita15.jpg" class="img-fluid rounded-start h-100"
                                    alt="image-not-found">
                            </div>
                            <div class="col-md-8 mt-4">
                                <div class="card-body">

                                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis.</p>
                                    <div>
                                        <div class="row mt-3">
                                            <div class="col col-2 text-center fs-3 text-warning"><i
                                                    class="fas fa-quote-left"></i></div>
                                            <div class="col col-10">
                                                <h5 class="card-title">Sheshy Amanuel</h5>
                                                <p class="card-text">Business Manager</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="box">
                        <div class="level-item">
                            <div>
                                <div class="heading">
                                    <img class="avatar" src="http://i.pravatar.cc/150?img=48">
                                </div>
                                <hr>
                                <div class="content">
                                    Dramatically maintain clicks-and-mortar solutions without functional solutions. 
                                    Completely synergize resource taxing relationships via premier niche markets. 
                                    Professionally cultivate.
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="card mb-3">
                        <div class="row g-0">
                            <div class="col-12 col-md-4">
                                <img src="images/hospita17.jpg" class="img-fluid rounded-start "
                                    alt="image-not-found">
                            </div>
                            <div class="col-md-8 mt-4">
                                <div class="card-body">

                                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis.</p>
                                    <div>
                                        <div class="row mt-3">
                                            <div class="col col-2 text-center fs-3 text-warning"><i
                                                    class="fas fa-quote-left"></i></div>
                                            <div class="col col-10">
                                                <h5 class="card-title">Sheshy Amanuel</h5>
                                                <p class="card-text">Business Manager</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="card mb-3">
                        <div class="row g-0">
                            <div class="col-12 col-md-4">
                                <img src="images/hospita18.jpg" class="img-fluid rounded-start "
                                    alt="image-not-found">
                            </div>
                            <div class="col-md-8 mt-4">
                                <div class="card-body">

                                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis.</p>
                                    <div>
                                        <div class="row mt-3">
                                            <div class="col col-2 text-center fs-3 text-warning"><i
                                                    class="fas fa-quote-left"></i></div>
                                            <div class="col col-10">
                                                <h5 class="card-title">Sheshy Amanuel</h5>
                                                <p class="card-text">Business Manager</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="card mb-3">
                        <div class="row g-0">
                            <div class="col-12 col-md-4">
                                <img src="images/hospita19.jpg" class="img-fluid rounded-start "
                                    alt="image-not-found">
                            </div>
                            <div class="col-md-8 mt-4">
                                <div class="card-body">

                                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis.</p>
                                    <div>
                                        <div class="row mt-3">
                                            <div class="col col-2 text-center fs-3 text-warning"><i
                                                    class="fas fa-quote-left"></i></div>
                                            <div class="col col-10">
                                                <h5 class="card-title">Sheshy Amanuel</h5>
                                                <p class="card-text">Business Manager</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section> -->
        <!-- End Patient Feedback -->

        <!-- CTA Area -->
        <div class="cta-area gray-bg ptb-100">
            <div class="container ">
                <div class="cta-text-content ">
                    <h3>We are constantly evaluating and implementing ways to improve patient safety.</h3>
                    <p>Please speak up when you have questions or concerns.</p>

                    <div class="cta-contant">
                        <i class="icofont-phone"></i>
                        <a href="tel:16045555555"> 1-604-555-5555</a>
                    </div>
                </div>

                <div class="cta-doctor-img">
                    <img src="images/hospita1.png" alt="Doctor" class="img-fluid">
                </div>
            </div>
        </div>
        <!-- CTA Area -->

        <!-- Latest news section -->
        <section class="latest-news ptb-100 pb-70">
            <div class="container">
                <div class="section-title">
                    <h2>Latest News</h2>
                    <p>We are ready to build your dream future Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                        Dolorum, beatae. Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
                </div>

                <div class="latest-news-carousel owl-carousel owl-theme owl-theme-2">
                    <div class="single-card actical-card">
                        <div class="thumb-img">
                            <a href="blog-details.html">
                                <img src="images/hospita21.jpg" alt="News Image" />
                            </a>
                        </div>

                        <div class="caption-text">
                            <h3><a href="blog-details.html">Baby Talk: Is Surrogacy An Option?</a></h3>

                            <ul class="meta-tag">
                                <li class="author">
                                    <img src="assets/img/patient/1.jpg" alt="">
                                    <a href="images/hospita22.jpg">Dr. Jacson</a>
                                </li>
                                <li>5 Jan, 2024</li>
                                <li><i class="icofont-speech-comments"></i> 30</li>
                            </ul>

                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt
                                ut labore</p>

                            <a href="blog-details.html" class="read-more">Read More <i
                                    class="icofont-swoosh-right"></i></a>
                        </div>
                    </div>

                    <div class="single-card actical-card">
                        <div class="thumb-img">
                            <a href="blog-details.html">
                                <img src="images/hospita23.jpg" alt="News Image" />
                            </a>
                        </div>

                        <div class="caption-text">
                            <h3><a href="blog-details.html">4 Simple Tips To Dental Patient Marketing</a></h3>

                            <ul class="meta-tag">
                                <li class="author">
                                    <img src="images/hospita24.jpg" alt="">
                                    <a href="blog-details.html">Dr. Jack</a>
                                </li>
                                <li>7 Jan, 2024</li>
                                <li><i class="icofont-speech-comments"></i> 30</li>
                            </ul>

                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt
                                ut labore</p>

                            <a href="blog-details.html" class="read-more">Read More <i
                                    class="icofont-swoosh-right"></i></a>
                        </div>
                    </div>

                    <div class="single-card actical-card">
                        <div class="thumb-img">
                            <a href="blog-details.html">
                                <img src="images/hospita21.jpg" alt="News Image" />
                            </a>
                        </div>

                        <div class="caption-text">
                            <h3><a href="blog-details.html">How to Donate Medical Supplies</a></h3>

                            <ul class="meta-tag">
                                <li class="author">
                                    <img src="images/hospita22.jpg" alt="">
                                    <a href="blog-details.html">Dr. Tom</a>
                                </li>
                                <li>8 Jan, 2024</li>
                                <li><i class="icofont-speech-comments"></i> 30</li>
                            </ul>

                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt
                                ut labore</p>

                            <a href="blog-details.html" class="read-more">Read More <i
                                    class="icofont-swoosh-right"></i></a>
                        </div>
                    </div>

                    <div class="single-card actical-card">
                        <div class="thumb-img">
                            <a href="blog-details.html">
                                <img src="images/hospita23.jpg" alt="News Image" />
                            </a>
                        </div>

                        <div class="caption-text">
                            <h3><a href="blog-details.html">Simple First Aid Tips For An Injured Ankle</a></h3>

                            <ul class="meta-tag">
                                <li class="author">
                                    <img src="images/hospita24.jpg" alt="">
                                    <a href="blog-details.html">Dr. Jaci</a>
                                </li>
                                <li>15 Jan, 2024</li>
                                <li><i class="icofont-speech-comments"></i> 30</li>
                            </ul>

                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt
                                ut labore</p>

                            <a href="blog-details.html" class="read-more">Read More <i
                                    class="icofont-swoosh-right"></i></a>
                        </div>
                    </div>

                    <div class="single-card actical-card">
                        <div class="thumb-img">
                            <a href="blog-details.html">
                                <img src="images/hospita22.jpg" alt="News Image" />
                            </a>
                        </div>

                        <div class="caption-text">
                            <h3><a href="blog-details.html">Tips for Moms to Detect Medicare Scams</a></h3>

                            <ul class="meta-tag">
                                <li class="author">
                                    <img src="images/hospita23.jpg" alt="">
                                    <a href="blog-details.html">Dr. Alert</a>
                                </li>
                                <li>25 Jan, 2024</li>
                                <li><i class="icofont-speech-comments"></i> 30</li>
                            </ul>

                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt
                                ut labore</p>

                            <a href="blog-details.html" class="read-more">Read More <i
                                    class="icofont-swoosh-right"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End Latest news section -->



        <!-- Footer -->
        <footer class="pt-100 pb-50">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12 col-md-12 col-lg-4">
                        <div class="footer-widget">
                            <a href="#" class="footer-logo">
                                <img src="images/hospita01.png" alt="Logo">
                            </a>

                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt
                                ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo
                                viverra maecenas accumsan lacus vel facilisis. </p>

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
                                <a href="/cdn-cgi/l/email-protection#2d45484141426d5d5f4240484944034e4240"><span
                                        class="__cf_email__"
                                        data-cfemail="7e161b1212113e0e0c11131b1a17501d1113">[email&#160;protected]</span></a>
                                <a href="/cdn-cgi/l/email-protection#d9b0b7bfb699a9abb6b4bcbdb0f7bab6b4"><span
                                        class="__cf_email__"
                                        data-cfemail="dab3b4bcb59aaaa8b5b7bfbeb3f4b9b5b7">[email&#160;protected]</span></a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="separate-line"></div>

                <div class="row bottom-footer">
                    <div class="col-md-6 col-lg-6">
                        <p>© Promedi is Proudly Owned by <a href="https://envytheme.com/" target="_blank">EnvyTheme</a>
                        </p>
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


    </div>

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