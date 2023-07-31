import { Controller } from "@hotwired/stimulus";

// this stimulus controller can be registered with identifier : uistiti--alpha--container
export default class extends Controller {
  connect() {
    console.log("Hello, from container stimulus controller !", this.element);
  }
}