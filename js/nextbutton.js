document.addEventListener('DOMContentLoaded', () => {
  const slider = document.getElementById('recipesSlider');
  const prevBtn = document.getElementById('prevBtn');
  const nextBtn = document.getElementById('nextBtn');
  if (!slider || !prevBtn || !nextBtn) return;

  // compute card width + gap dynamically
  function getCardStep() {
    const card = slider.querySelector('.recipe-card');
    if (!card) return slider.clientWidth; // fallback
    const cardRect = card.getBoundingClientRect();
    const style = getComputedStyle(slider);
    // try CSS gap, fallback to 24
    const gap = parseFloat(style.getPropertyValue('gap')) || parseFloat(style.getPropertyValue('column-gap')) || 24;
    return cardRect.width + gap;
  }

  let step = getCardStep();
  window.addEventListener('resize', () => { step = getCardStep(); });

  nextBtn.addEventListener('click', () => {
    slider.scrollBy({ left: step, behavior: 'smooth' });
  });

  prevBtn.addEventListener('click', () => {
    slider.scrollBy({ left: -step, behavior: 'smooth' });
  });

  // Optional: enable/disable buttons at edges
  function updateButtons() {
    const maxScroll = slider.scrollWidth - slider.clientWidth;
    prevBtn.disabled = slider.scrollLeft <= 5; // tolerance
    nextBtn.disabled = slider.scrollLeft >= maxScroll - 5;
  }
  slider.addEventListener('scroll', updateButtons);
  // call once to set initial disabled state
  updateButtons();
});