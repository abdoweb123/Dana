// Define the slider format first
var slider_format = {
  arrows: true,
  speed: 1000,
  slidesToShow: 1,
  slidesToScroll: 1,
  autoplay: true,
  cssEase: 'linear',
  rtl: true,
  responsive: [
    {
      breakpoint: 1366,
      settings: {
        slidesToShow: 1,
        slidesToScroll: 2,
      
      }
    },
    {
      breakpoint: 1024,
      settings: {
        slidesToShow: 1,
        slidesToScroll: 2,
      
      }
    },
    {
      breakpoint: 720,
      settings: {
        slidesToShow: 1,
        slidesToScroll: 2,
      
      }
    },
    {
      breakpoint: 650,
      settings: {
        slidesToShow: 1,
        slidesToScroll: 1
      }
    },
  ]
};

// Call slick after defining slider_format
$('.most-slied').slick(slider_format);
$('.new_arrivals').slick(slider_format);
$('.most_selling').slick(slider_format);
$('.featured').slick(slider_format);
