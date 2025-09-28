const slider = document.getElementById("slider");
const slides = document.querySelectorAll(".slide");
const nextBtn = document.getElementById("nextBtn");

let currentIndex = 0;

nextBtn.addEventListener("click", () => {
  currentIndex++;
  if (currentIndex >= slides.length) {
    currentIndex = 0; // balik sa una
  }
  slider.style.transform = `translateX(-${currentIndex * 300}px)`; 
});
