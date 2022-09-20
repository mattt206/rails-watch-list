import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="navbar"
export default class extends Controller {
  static targets = ["links"]

  connect() {
    console.log("hi");
  }
  updateNavbar() {
    const links = this.linksTarget;

    if (window.scrollY >= window.innerHeight) {
      this.element.classList.add("navbar-lewagon-black")
        // console.log(links);
      links.classList.add("text-white")
    } else {
      this.element.classList.remove("navbar-lewagon-black")
      links.classList.remove("text-white")
    }
  }
}


// sports.forEach((element) => {
//   element.addEventListener("click", (event) => {
//     event.currentTarget.classList.toggle("active");
//   });
// });
