import { Controller } from "@hotwired/stimulus";

// this stimulus controller can be registered with identifier : uistiti--alpha--flex
export default class extends Controller {
  connect() {
    console.log("Hello, from flex stimulus controller !", this.element);
  }
}