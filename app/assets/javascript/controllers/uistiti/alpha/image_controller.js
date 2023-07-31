import { Controller } from "@hotwired/stimulus";

// this stimulus controller can be registered with identifier : uistiti--alpha--image
export default class extends Controller {
  connect() {
    console.log("Hello, from image stimulus controller !", this.element);
  }
}