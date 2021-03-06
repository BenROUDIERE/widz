// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
Turbolinks.start()
ActiveStorage.start()


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";
import "bootstrap-icons/font/bootstrap-icons.css";
import { initAutocomplete} from '../plugins/init_autocomplete';
import { initSwiper } from '../plugins/init_swiper';
import { loadDynamicHomeText } from '../components/home';
import { slider } from '../components/slider';
import { checkedPlant } from '../components/checkedPlant';
import { weather} from '../components/weather';

// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';

document.addEventListener('turbolinks:load', () => {
  // Call your functions here, e.g:
  // initSelect2();
  initAutocomplete();
  initSwiper();
  loadDynamicHomeText();
  slider();
  checkedPlant();
  weather();
});

import "controllers"

// import { fetchWeather, fetchCurrentPositionWeather } from './components/weather';
// import { initSelect2 } from './plugins/init_select2';

// initSelect2();
// fetchWeather();

// const form = document.querySelector('form');
// const cityInput = document.getElementById('city-input');
// form.addEventListener('submit', (event) => {
//   event.preventDefault();
//   fetchWeather(cityInput.value);
// });

// const currentLocationLink = document.getElementById('current-location');
// currentLocationLink.addEventListener('click', fetchCurrentPositionWeather);