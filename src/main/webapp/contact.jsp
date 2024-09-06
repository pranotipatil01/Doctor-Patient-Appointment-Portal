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
                    <h2>Contact Us</h2>
                </div>

                <div class="col-md-6 col-lg-5">
                    <ul>
                        <li><a href="index.html">Home</a></li>
                        <li>Contact Us</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- End Page Title -->

    <!-- Contact section -->
    <section class="contact-area ptb-100">
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-lg-5">
                    <div class="contact-info">
                        <h3 class="title">Get in Touch</h3>
                        <ul>
                            <li><i class="icofont-google-map"></i> 210 Quadra Street Victoria, Canada</li>
                            <li><i class="icofont-envelope"></i> <a
                                    href="/cdn-cgi/l/email-protection#94f1ecf5f9e4f8f1d4f9f5fdf8baf7fbf9"><span
                                        class="__cf_email__"
                                        data-cfemail="93f6ebf2fee3fff6d3fef2faffbdf0fcfe">[email&#160;protected]</span></a>
                            </li>
                            <li><i class="icofont-smart-phone"></i> <a href="tel:+44 458 7895">+44 458 7895</a></li>
                        </ul>
                    </div>

                    <div class="opening-hours">
                        <h3 class="title">Opening Hours</h3>
                        <ul>
                            <li>Mon - Thu <span>7.00 AM - 20.00 PM</span></li>
                            <li>Friday <span>7.00 AM - 20.00 PM</span></li>
                            <li>Saturday - Thu <span>7.00 AM - 20.00 PM</span></li>
                            <li>Sunday <span>7.00 AM - 20.00 PM</span></li>
                        </ul>
                    </div>
                </div>

                <div class="col-md-12 col-lg-7">
                    <h3 class="title">Questions? Let our experts help!</h3>
                    <p>Team of Professionals</p>

                    <form id="contactForm">
                        <div class="row">
                            <div class="col-lg-6 col-md-6">
                                <div class="form-group">
                                    <input type="text" class="form-control" name="name" id="name" required
                                        data-error="Please enter your name" placeholder="Name">
                                    <div class="help-block with-errors"></div>
                                </div>
                            </div>

                            <div class="col-lg-6 col-md-6">
                                <div class="form-group">
                                    <input type="email" class="form-control" name="email" id="email" required
                                        data-error="Please enter your email" placeholder="Email">
                                    <div class="help-block with-errors"></div>
                                </div>
                            </div>

                            <div class="col-lg-6 col-md-6">
                                <div class="form-group">
                                    <input type="text" class="form-control" name="subject" id="subject" required
                                        data-error="Please enter your subject" placeholder="Subject">
                                    <div class="help-block with-errors"></div>
                                </div>
                            </div>

                            <div class="col-lg-6 col-md-6">
                                <div class="form-group">
                                    <input type="text" class="form-control" name="number" id="number" required
                                        data-error="Please enter your number" placeholder="Number">
                                    <div class="help-block with-errors"></div>
                                </div>
                            </div>

                            <div class="col-lg-12 col-md-12">
                                <div class="form-group">
                                    <textarea name="message" class="form-control" id="message" cols="30" rows="4"
                                        required data-error="Write your message" placeholder="Message"></textarea>
                                    <div class="help-block with-errors"></div>
                                </div>
                            </div>

                            <div class="col-lg-12 col-md-12">
                                <button type="submit" class="default-btn">Send Message</button>
                                <div id="msgSubmit" class="h3 text-center hidden"></div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
    <!-- End Contact section -->

    <!-- Map -->
    <div id="map">
        <iframe
            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2646.828697336744!2d-123.36207488415738!3d48.44062743798364!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x548f73811b3b8513%3A0x968aa5572a89f353!2s210-2750%20Quadra%20St%2C%20Victoria%2C%20BC%20V8T%204E8%2C%20Canada!5e0!3m2!1sen!2sbd!4v1620281800816!5m2!1sen!2sbd"></iframe>
    </div>
    <!-- End Map -->

    <!-- Footer -->
    <footer class="pt-100 pb-50">
        <div class="container">
            <div class="row">
                <div class="col-sm-12 col-md-12 col-lg-4">
                    <div class="footer-widget">
                        <a href="#" class="footer-logo">
                            <img src="images/hospita01.png" alt="Logo">
                        </a>

                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
                            labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo
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
                            <a href="/cdn-cgi/l/email-protection#bdd5d8d1d1d2fdcdcfd2d0d8d9d493ded2d0"><span
                                    class="__cf_email__"
                                    data-cfemail="026a676e6e6d4272706d6f67666b2c616d6f">[email&#160;protected]</span></a>
                            <a href="/cdn-cgi/l/email-protection#11787f777e5161637e7c7475783f727e7c"><span
                                    class="__cf_email__"
                                    data-cfemail="533a3d353c1323213c3e36373a7d303c3e">[email&#160;protected]</span></a>
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
    <script src="js/script.js"></script>
</body>

</html>