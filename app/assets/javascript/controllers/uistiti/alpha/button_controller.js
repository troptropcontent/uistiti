import { Controller } from "@hotwired/stimulus";

// this stimulus controller can be registered with identifier : uistiti--alpha--button
export default class extends Controller {
  connect() {
    console.log("Hello, from button stimulus controller !", this.element);
  }
}