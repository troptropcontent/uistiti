import { Controller } from "@hotwired/stimulus";

// this stimulus controller can be registered with identifier : uistiti--alpha--main-layout
export default class extends Controller {
  connect() {
    console.log("Hello, from main_layout stimulus controller !", this.element);
  }
}