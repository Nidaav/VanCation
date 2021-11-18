import flatpickr from "flatpickr";
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";

const initFlatpickr = () => {
  flatpickr(".start-datepicker", {
    altInput: true,
    plugins: [new rangePlugin({ input: ".end-datepicker" })]
  });
}

export { initFlatpickr };
