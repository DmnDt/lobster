
const functionDisplay = () => {
  const display = document.querySelector(".cards-category");
  display.addEventListener("click", (event) => {
    const div = document.getElementById("statistics")
      if (div.style.display == 'none') {
        div.style.display = 'block';
      } else {
        div.style.display = 'none';
      }
    }
  );
}

export { functionDisplay }
