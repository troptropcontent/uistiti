import { Controller } from "@hotwired/stimulus";

// this stimulus controller can be registered with identifier : uistiti--alpha--toggle
export default class extends Controller {
  static values = {
    url: String,
    paramKey: String,
    field: String,
  }

  connect() {
    console.log("Hello, from toggle stimulus controller !", this.element);
  }

  sendPutRequest(event) {
    const input_element = event.target
    const input_changed_to = input_element.checked
    const csrf_token = document.getElementsByName('csrf-token')[0].content
    const data = new FormData()
    const form_data_key = `${this.paramKeyValue}[${this.fieldValue}]`
    data.append( form_data_key,input_changed_to)

    const requestOptions = {
      method: 'PUT',
      headers: { 'X-CSRF-Token': csrf_token },
      body: data,
    };
    
    console.log({requestOptions})
    const revert_input = () => input_element.checked = !input_changed_to

    fetch(this.urlValue, requestOptions)
      .then(({status}) => status)
      .then(status => {
        const status_string = status.toString()
        const is_put_request_succesfull = status_string[0] == '2'
        !is_put_request_succesfull && revert_input()
      })
  }
}