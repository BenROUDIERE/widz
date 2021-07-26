import Typed from 'typed.js';

const loadDynamicHomeText = () => {
  const home = document.getElementById("home-typed-text");

  if (home) {
    new Typed('#home-typed-text', {
      strings: ["Never kill a plant again"],
      typeSpeed: 60,
      loop: false
    });
  }
}

export { loadDynamicHomeText };