import { Controller } from "@hotwired/stimulus";

// this stimulus controller can be registered with identifier : uistiti--alpha--token
export default class extends Controller {
  connect() {
    console.log("Hello, from token stimulus controller !", this.element);
  }
}