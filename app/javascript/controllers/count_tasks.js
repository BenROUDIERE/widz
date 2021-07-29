import { Controller } from "stimulus";

export default class extends Controller {
  static targets = [ 'count' ];

  refresh(event) {
    console.log(event);
  }
}