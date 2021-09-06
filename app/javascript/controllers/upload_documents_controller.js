// Visit The Stimulus Handbook for more details
// https://stimulusjs.org/handbook/introduction
//
// This example controller works with specially annotated HTML like:
//
// <div data-controller="hello">
//   <h1 data-target="hello.output"></h1>
// </div>

// Code de thomas pour cacher le form d'upload de documents et l'utiliser à travers un bouton customisé

import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["input", "form"];

  connect() {
  }

  select() {
    event.preventDefault();
    this.inputTarget.click();
  }

  change() {
    this.formTarget.submit();
  }
}
