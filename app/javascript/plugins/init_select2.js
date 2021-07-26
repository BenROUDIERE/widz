import $ from 'jquery';
import select2 from 'select2';

const cities = ["Nantes"];

const initSelect2 = () => {
  $('.select2').select2({
    data: cities,
    width: '100%'
  });
};

export { initSelect2 };
