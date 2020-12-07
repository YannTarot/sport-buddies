var Slider = require("bootstrap-slider");

export const initSlider = () => {
  var slider = new Slider("#event_expected_participants_count");
  slider.on("slide", function(sliderValue) {
    document.getElementById("participantSliderVal").textContent = sliderValue;
  });
};
