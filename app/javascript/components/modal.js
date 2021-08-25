// function whichId() {
//   const bookings = document.querySelectorAll('.buy')
//   bookings.forEach((item) => {
//     item.addEventListener('click', () => {
//       const id = item.id;
//       const form = document.querySelector('.simple_form')
//       document.getElementById("new_booking").action = `/masters/${id}/bookings`;
//       document.getElementById("new_booking").classList.add('shake');
//       setTimeout(() => {
//         document.getElementById("new_booking").classList.remove('shake');
//       }, 2000);
//     });
//   });
// }

// export { whichId };

function modal() {
  const button_validate = document.getElementById("button_validate");
  const submit_form = document.getElementById("new_investment");
  // console.log(new_investment)
  button_validate.addEventListener('click', () => {
    submit_form.submit();
  })
}
export {modal};
