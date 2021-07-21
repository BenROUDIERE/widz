import places from 'places.js';

const initAutocomplete = () => {
  const cityInput = document.getElementById('balcony_city');
  if (cityInput) {
    places({ container: cityInput });
  }
};

export { initAutocomplete };