// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import 'bootstrap';

import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    this.element.textContent = "Hello World!"
    console.log("hi");
  }
}

