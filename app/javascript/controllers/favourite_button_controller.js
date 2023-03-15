import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="favourite-button"
export default class extends Controller {
  static targets = ["button"]

  connect() {
    console.log('Hello Mike')
  }

  toggle() {
    console.log(this.buttonTarget.innerHTML)
    // this.buttonTarget.insertAdjacentHTML("beforeend", `<i class="fa-solid fa-heart fave_button"></i>`)
    this.buttonTarget.innerHTML = '<i class="fa-solid fa-heart fave_button"></i>'
  }
}
