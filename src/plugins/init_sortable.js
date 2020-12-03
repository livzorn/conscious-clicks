import Sortable from 'sortablejs';

const initSortable = () => {
  const list = document.querySelector('#shuffle');
  Sortable.create(list);
};

export { initSortable };
