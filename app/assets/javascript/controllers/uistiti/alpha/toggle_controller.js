import { Controller } from "@hotwired/stimulus";

// this stimulus controller can be registered with identifier : uistiti--alpha--toggle
export default class extends Controller {
  connect() {
    console.log("Hello, from toggle stimulus controller !", this.element);
  }
}