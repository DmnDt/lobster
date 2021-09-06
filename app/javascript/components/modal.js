// Fonction pour la modal LOI au submit d'un Investment

function modal() {
  const button_validate = document.getElementById("button_validate");
  const submit_form = document.getElementById("new_investment");
  // console.log(new_investment)
  if (button_validate) {
  button_validate.addEventListener('click', () => {
    submit_form.submit();
  });
  }
}
export {modal};
