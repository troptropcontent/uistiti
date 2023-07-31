import { Controller } from "@hotwired/stimulus";

// this stimulus controller can be registered with identifier : uistiti--alpha--form-input-group
export default class extends Controller {
  connect() {
    console.log("Hello, from form_input_group stimulus controller !", this.element);
  }
}