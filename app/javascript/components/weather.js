// const url = 'https://api.openweathermap.org/data/2.5/weather?q=nantes&units=metric&appid=02ec45d4d324b506bf92f98205cbef06';
// const apiKey = '02ec45d4d324b506bf92f98205cbef06';
// const icon = document.getElementById('icon');
// const temperature = document.getElementById('temperature');
// const description = document.getElementById('description');
// const city = document.getElementById('city');
// const date = document.getElementById('date');
// const form = document.getElementById('city-form');
// const input = document.getElementById('city-input');

// const fetchWeather = (cityName) => {
//   fetch(`https://api.openweathermap.org/data/2.5/weather?q=${cityName}&units=metric&appid=02ec45d4d324b506bf92f98205cbef06`)
//     .then(response => response.json())
//     .then((data) => {
//       city.innerText = data.name;
//       temperature.innerText = `${data.main.temp}°C`;
//       description.innerText = data.weather[0].description;
//       const today = new Date();
//       const localOffset = data.timezone + today.getTimezoneOffset() * 60;
//       const localDate = new Date(today.setUTCSeconds(localOffset));
//       const options = { weekday: 'long', month: 'long', day: 'numeric', hour: 'numeric', minute: 'numeric' };
//       const formattedDate = localDate.toLocaleDateString("en-US", options);
//       date.innerText = formattedDate;
//       icon.src = `https://openweathermap.org/img/w/${data.weather[0].icon}.png`
//     });
// }

// form.addEventListener('submit', (event) => {
//   event.preventDefault();
//   fetchWeather(input.value);
// });
const weather = () => {

}

export { weather };