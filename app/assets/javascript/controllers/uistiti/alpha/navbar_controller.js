import { Controller } from "@hotwired/stimulus";

// this stimulus controller can be registered with identifier : uistiti--alpha--navbar
export default class extends Controller {
  connect() {
    console.log("Hello, from navbar stimulus controller !", this.element);
  }
}