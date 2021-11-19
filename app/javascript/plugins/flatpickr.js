import flatpickr from "flatpickr";
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";
import { French } from "flatpickr/dist/l10n/fr.js"

const initFlatpickr = () => {
  flatpickr(".start-datepicker", {
    "locale": French,
    plugins: [new rangePlugin({ input: ".end-datepicker" })]
  });
}

export { initFlatpickr };
