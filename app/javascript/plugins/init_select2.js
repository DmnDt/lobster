import 'select2';
import $ from 'jquery';

//Init de Select2 (barre de recherche index avec tags)

const initSelect2 = () => {
  $('.select2').select2({
    placeholder: 'Select industries',
  });
};


export { initSelect2 };
