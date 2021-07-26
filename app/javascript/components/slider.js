// const Slider = require("bootstrap-slider");
import Slider from "bootstrap-slider";

const slider = () => {
  // const slider = document.getElementById("myRange");
  // const output = document.getElementById("number");
  // output.innerHTML = slider.value; 

  // slider.oninput = () => {
  //   output.innerHTML = this.value;
  // }

  const mySlider = document.getElementById("ex8");
    if (mySlider) {
      new Slider("#ex8", {
        tooltip: 'always'
      });
    }  
}
  
export { slider };
