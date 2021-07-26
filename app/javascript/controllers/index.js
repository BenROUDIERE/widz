// Load all the controllers within this directory and all subdirectories. 
// Controller files must be named *_controller.js.

import { Application } from "stimulus"
import Carousel from "stimulus-carousel"
import { definitionsFromContext } from "stimulus/webpack-helpers"
import { fetchWeather, fetchCurrentPositionWeather } from './components/weather';
import { initSelect2 } from './plugins/init_select2';


const application = Application.start()
const context = require.context("controllers", true, /_controller\.js$/)
application.register("carousel", Carousel)
application.load(definitionsFromContext(context))


initSelect2();
fetchWeather();

const form = document.querySelector('form');
const cityInput = document.getElementById('city-input');
form.addEventListener('submit', (event) => {
  event.preventDefault();
  fetchWeather(cityInput.value);
});

const currentLocationLink = document.getElementById('current-location');
currentLocationLink.addEventListener('click', fetchCurrentPositionWeather);