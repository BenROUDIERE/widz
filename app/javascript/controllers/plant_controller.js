import { Controller } from "stimulus"

export default class extends Controller {

  replaceCard(event) {
    console.log(event)
    const [data] = event.detail; // const data = event.detail[0];

    this.element.outerHTML = data;
  }
}
