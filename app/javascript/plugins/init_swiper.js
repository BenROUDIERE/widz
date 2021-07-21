import Swiper from 'swiper';
import 'swiper/swiper-bundle.css';

const initSwiper =() => {
  new Swiper('.swiper-container', {
    direction: 'horizontal',
    loop: false,
    // If we need pagination
    pagination: {
      el: '.swiper-pagination',
    },
  
    // Navigation arrows
    navigation: {
      nextEl: '.swiper-button-next',
      prevEl: '.swiper-button-prev',
    },
  
    // And if we need scrollbar
    scrollbar: {
      el: '.swiper-scrollbar',
    },
  });
};

export { initSwiper };