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
                <h2>About Us</h2>
            </div>

            <div class="col-md-6 col-lg-5">
                <ul>
                    <li><a href="index.html">Home</a></li>
                    <li>About Us</li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- End Page Title -->

<!-- Welcome Section -->
<section class="welcome-section ptb-100"> 
    <div class="container">
        <div class="section-title">
            <h2>Welcome to Promedi</h2>
            <p>We are ready to build your dream future Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorum, beatae. Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
        </div>
        
        <div class="row"> 
            <div class="col-md-6 col-lg-4">
                <div class="single-box">
                    <div class="icon">
                        <i class="icofont-stethoscope-alt"></i>
                    </div>

                    <h3>Modern Clinic</h3>
                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text.</p>
                </div>
            </div>

            <div class="col-md-6 col-lg-4">
                <div class="single-box">
                    <div class="icon">
                        <i class="icofont-doctor-alt"></i>
                    </div>

                    <h3>Qualified Doctors</h3>
                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text.</p>
                </div>
            </div>

            <div class="col-md-6 col-lg-4 offset-md-3 offset-lg-0">
                <div class="single-box">
                    <div class="icon">
                        <i class="icofont-ambulance"></i>
                    </div>

                    <h3>Emergency Cases</h3>
                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text.</p>
                </div>
            </div>
        </div>

        <div class="welcome-inner-content">
            <div class="row justify-content-center align-items-center">
                <div class="col-lg-6">
                    <div class="welcome-image">
                        <img src="images/hospita06.jpg" alt="about">
                    </div>
                </div>

                <div class="col-lg-6">
                    <span>About our medical</span>
                    <h3>Happiness is nothing more than good health and a bad memory</h3>
                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text.</p>
                    <ul>
                        <li>Qualified Doctors</li>
                        <li>Outdoor Checkup</li>
                        <li>24/7 Help Center</li>
                        <li>Modern Clinic</li>
                        <li>Emergency Cases</li>
                        <li>Breast Screening</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- End Welcome section -->

<!-- Video Section -->
<section class="video-section ptb-100"> 
    <div class="container"> 
        <div class="section-title white-title">
            <h2>Watch Our Video</h2>
            <p>We are ready to build your dream future Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorum, beatae. Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
        </div>
        
        <div class="video-content mb-minus-330">
            <div class="d-table"> 
                <div class="d-tablecell">
                    <div class="sonar-wrapper">
                        <div class="sonar-emitter">
                            <div class="sonar-wave"></div>
                            <a href="https://www.youtube.com/watch?v=LFBxRxwY4Qw" class="play-video popup-youtube">
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
            <p>We are ready to build your dream future Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorum, beatae. Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
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
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore</p>
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
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore</p>
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
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore</p>
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
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore</p>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Edn Expert Doctors -->

<!-- Call To Action -->
<section class="call-to-action">
    <div class="container">
        <div class="row">
            <div class="col-lg-9">
                <div class="call-to-action-text">
                    <i class="icofont-first-aid"></i>
                    <h3>Health Care Center</h3>
                    <p>if you have any Emerangcy by health problem contact this <span>No. 035 687 9514</span> or contact form</p>
                </div>
            </div>

            <div class="col-lg-3">
                <a href="contact.html" class="default-btn">Contact Us</a>
            </div>
        </div>
    </div>
</section>
<!-- End Call To Action -->

<!-- Patient Feedback -->
<!-- <section class="patient-feedback ptb-100"> 
    <div class="container"> 
        <div class="section-title">
            <h2>Patient Feedback</h2>
            <p>We are ready to build your dream future Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorum, beatae. Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
        </div>
     
        <div class="feedback-carousel owl-carousel owl-theme owl-theme-2">
            <div class="single-feedback">
                <div class="feedback-text">
                    <i class="icofont-quote-right"></i>
                    
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis.</p>

                    <div class="profile-content">
                        <img src="assets/img/patient/1.jpg" alt="Patient" />
                        <h4>Anym Jackson</h4>
                    </div>
                </div>
            </div>
            
            <div class="single-feedback">
                <div class="feedback-text">
                    <i class="icofont-quote-right"></i>
                    
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis.</p>

                    <div class="profile-content">
                        <img src="assets/img/patient/2.jpg" alt="Patient" />
                        <h4>Mark Rylance</h4>
                    </div>
                </div>
            </div>
            
            <div class="single-feedback">
                <div class="feedback-text">
                    <i class="icofont-quote-right"></i>
                    
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis.</p>

                    <div class="profile-content">
                        <img src="assets/img/patient/3.jpg" alt="Patient" />
                        <h4>Natalie Portman</h4>
                    </div>
                </div>
            </div>
            
            <div class="single-feedback">
                <div class="feedback-text">
                    <i class="icofont-quote-right"></i>
                    
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis.</p>

                    <div class="profile-content">
                        <img src="assets/img/patient/4.jpg" alt="Patient" />
                        <h4>Idris Elba</h4>
                    </div>
                </div>
            </div>
            
            <div class="single-feedback">
                <div class="feedback-text">
                    <i class="icofont-quote-right"></i>
                    
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis.</p>

                    <div class="profile-content">
                        <img src="assets/img/patient/5.jpg" alt="Patient" />
                        <h4>Scarlett Johansson</h4>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section> -->
<!-- End Patient Feedback -->

<!-- CTA Area -->
<div class="cta-area gray-bg ptb-100">
    <div class="container"> 
        <div class="cta-text-content">
            <h3>We are constantly evaluating and implementing ways to improve patient safety.</h3>
            <p>Please speak up when you have questions or concerns.</p>
            
            <div class="cta-contant">
                <i class="icofont-phone"></i>
               <a href="tel:16045555555">1-604-555-5555</a>
            </div>
        </div>
        
        <div class="cta-doctor-img">
            <img src="images/hospita20.png" alt="Doctor">
        </div>
    </div>
</div>
<!-- CTA Area -->



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
                        <a href="/cdn-cgi/l/email-protection#0e666b6262614e7e7c61636b6a67206d6163"><span class="__cf_email__" data-cfemail="abc3cec7c7c4ebdbd9c4c6cecfc285c8c4c6">[email&#160;protected]</span></a>
                        <a href="/cdn-cgi/l/email-protection#4a23242c250a3a3825272f2e2364292527"><span class="__cf_email__" data-cfemail="d1b8bfb7be91a1a3bebcb4b5b8ffb2bebc">[email&#160;protected]</span></a>
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

    <script>
         // Header Sticky
    $(window).on('scroll', function() {
        if ($(this).scrollTop() >150){  
            $('.header-sticky').addClass("is-sticky");
        }
        else{
            $('.header-sticky').removeClass("is-sticky");
        }
    });

        // Expert doctors carousel JS
        $('.expert-doctors-carousel').owlCarousel({
            loop: true,
            nav: true,
            autoplay: true,
            autoplayHoverPause: true,
            mouseDrag: false,
            margin: 30,
            dots: false,
            navText: [
                "<i class='icofont-swoosh-left'></i>",
                "<i class='icofont-swoosh-right'></i>"
            ],
            responsive: {
                0: {
                    items: 1
                },
                600: {
                    items: 2
                },
                1000: {
                    items: 3
                }
            }
        });

        // Feedback Carousel JS
        $('.feedback-carousel').owlCarousel({
            loop: true,
            nav: true,
            autoplay: true,
            autoplayHoverPause: true,
            mouseDrag: false,
            margin: 30,
            center: true,
            dots: false,
            navText: [
                "<i class='icofont-swoosh-left'></i>",
                "<i class='icofont-swoosh-right'></i>"
            ],
            responsive: {
                0: {
                    items: 1
                },
                768: {
                    items: 2
                },
                1200: {
                    items: 3
                }
            }
        });

        // Latest news Carousel JS
        $('.latest-news-carousel').owlCarousel({
            loop: true,
            nav: true,
            autoplay: true,
            autoplayHoverPause: true,
            mouseDrag: false,
            margin: 30,
            dots: false,
            navText: [
                "<i class='icofont-swoosh-left'></i>",
                "<i class='icofont-swoosh-right'></i>"
            ],
            responsive: {
                0: {
                    items: 1
                },
                768: {
                    items: 2
                },
                1000: {
                    items: 3
                }
            }
        });

        // Popup Video JS
        $('.popup-youtube, .popup-vimeo').magnificPopup({
            disableOn: 300,
            type: 'iframe',
            mainClass: 'mfp-fade',
            removalDelay: 160,
            preloader: false,
            fixedContentPos: false
        });


    </script>
</body>
</html>