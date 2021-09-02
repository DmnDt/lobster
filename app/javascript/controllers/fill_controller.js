// Visit The Stimulus Handbook for more details
// https://stimulusjs.org/handbook/introduction
//
// This example controller works with specially annotated HTML like:
//
// <div data-controller="hello">
//   <h1 data-target="hello.output"></h1>
// </div>

import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["name", "address", "activity", "chiffreAffaires", "croissanceChiffreAffaires", "margeBrute", "tauxMargeBrute", "excedentBrutExploitation", "tauxMargeEbitda", "apiData", "inputSearch", "newForm", "containerSearch", "siret"];

  connect() {
  }

  autocomplete(e){
    this.fetchApi(e.target.value);
  }

  async fetchApi(value) {
    if (value.length === 14) {
      await fetch(`https://api.pappers.fr/v1/entreprise?siret=${value}&api_token=0c665a6e4a30a3f1cb26ce756a2bb42eec327381493a9373`)
      .then(response => response.json())
      .then((data) => {
        this.siretTarget.value = data.siege.siret
        this.nameTarget.value = data.nom_entreprise;
        this.addressTarget.value = data.siege.adresse_ligne_1 + " " + data.siege.adresse_ligne_2 + " " + data.siege.ville + " " + data.siege.pays;
        this.activityTarget.value = data.domaine_activite;
        this.chiffreAffairesTarget.value = data.finances[0].chiffre_affaires;
        this.croissanceChiffreAffairesTarget.value = data.finances[0].taux_croissance_chiffre_affaires;
        // this.margeBruteTarget.value = data.finances[0].marge_brute;
        // this.tauxMargeBruteTarget.value = data.finances[0].taux_marge_brute;
        this.excedentBrutExploitationTarget.value = data.finances[0].excedent_brut_exploitation;
        this.tauxMargeEbitdaTarget.value = data.finances[0].taux_marge_EBITDA;
        this.apiDataTarget.value = data;
      });
    }
  }

  async updateForm() {
    const siret = this.inputSearchTarget.value;
    //animation
    await this.fetchApi(siret);
    this.newFormTarget.classList.remove("hidden");
    this.containerSearchTarget.classList.add("hidden");
  }
}
