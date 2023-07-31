import { Controller } from "@hotwired/stimulus";

// this stimulus controller can be registered with identifier : uistiti--alpha--form-submit
export default class extends Controller {
  connect() {
    console.log("Hello, from form_submit stimulus controller !", this.element);
  }
}