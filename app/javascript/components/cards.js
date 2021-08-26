
const functionDisplay = () => {
  const display = document.querySelectorAll(".cards-category");
  if  (display) {
    display.forEach((card) => {
      card.addEventListener("click", (event) => {
        const div = card.querySelector(".statistics")
        if (div.style.display == 'none') {
          div.style.display = 'block';
        } else {
          div.style.display = 'none';
        }
      });
     })
  }
}

export { functionDisplay }
