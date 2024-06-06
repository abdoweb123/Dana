// home swiper
const settings = {
  loop: true,
  speed: 700,
  reverseDirection: true,
  pagination: {
    el: ".swiper-pagination",
    type: "bullets"
  },
  navigation: {
    nextEl: ".swiper-button-next",
    prevEl: ".swiper-button-prev"
  }
};

const swiper = new Swiper(".mySwiper", settings);


AOS.init();
