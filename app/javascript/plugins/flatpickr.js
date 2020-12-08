import flatpickr from "flatpickr";

export const initFlatpickr = () => {
  flatpickr(".datepicker", {
    minDate: "today",
    maxDate: new Date().fp_incr(365),
    enableTime: true,
    dateFormat: "Y-m-d H:i",
  });
};
