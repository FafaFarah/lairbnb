import { Controller } from "@hotwired/stimulus"
import Typed from 'typed.js';

// Connects to data-controller="typed"
export default class extends Controller {
  static targets = ["animation"];
  connect() {
    console.log("🧞‍♂️");
    this.initializeTyped();
}

initializeTyped() {
  new Typed(this.animationTarget, {
    strings: ["Book your mysterious lair now"],
    typeSpeed: 30,
    loop: true,
  });
}
}
