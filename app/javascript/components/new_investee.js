//Animation vanishIn pour le SIRET, ajoute une class magictime vanishIn à la div du form au submit du SIRET

const selector = document.querySelector('.yourdiv')
selector.classList.add('magictime', 'puffIn')

function myFunction() {
  const selector = document.querySelector('.yourdiv')
  selector.classList.add('magictime', 'vanishIn')
}s
setTimeout(myFunction, 5000);

setTimeout(function () {
  $('.yourdiv').addClass('magictime vanishIn');
}, 5000);
