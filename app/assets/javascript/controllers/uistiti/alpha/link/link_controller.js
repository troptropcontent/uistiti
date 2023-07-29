import { Controller } from "@hotwired/stimulus";

// this stimulus controller can be registered with identifier : uistiti--alpha--link
export default class extends Controller {
  connect() {
    console.log("Hello, from link stimulus controller !", this.element);
  }
}