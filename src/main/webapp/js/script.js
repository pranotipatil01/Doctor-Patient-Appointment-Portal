
// Header Sticky
$(window).on('scroll', function () {
    if ($(this).scrollTop() > 150) {
        $('.header-sticky').addClass("is-sticky");
    }
    else {
        $('.header-sticky').removeClass("is-sticky");
    }
});

  // Date Picker
  $( function() {
    $( "#datepicker" ).datepicker();
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


