import { Controller } from "@hotwired/stimulus"
import Typed from 'typed.js';

// Connects to data-controller="typed"
export default class extends Controller {
  static targets = ["animation", "animation2"];
  connect() {
    console.log("🧞‍♂️");
    this.initializeTyped();
  }

  initializeTyped() {
    new Typed(this.animationTarget, {
      strings: ["Book your mysterious"],
      typeSpeed: 50,
      showCursor: false,
      fadeOut: true,
      // loop: true,
    })

    new Typed(this.animation2Target, {
      strings: ["lair now"],
      typeSpeed: 50,
      showCursor: false,
      startDelay: 1700,
      fadeOut: true,
      // loop: true,
    })
  };
}


// initializeTyped() {
//   const typedAnimation1 = new Typed(this.animationTarget, {
//     strings: ["Book your mysterious"],
//     typeSpeed: 30,
//     loop: true,
//     onComplete: () => {
//       const typedAnimation2 = new Typed(this.animation2Target, {
//         strings: ["lair now"],
//         typeSpeed: 30,
//         loop: true,
//       });
//     },
//   });
// }
// }


// initializeTyped() {
//   const typedAnimation1 = new Typed(this.animationTarget, {
//     strings: ["Book your mysterious"],
//     typeSpeed: 30,
//     loop: true,
//     onComplete: () => {
//       this.initializeTyped2(); // Start the second animation after the first one completes
//     },
//   });
// }

// initializeTyped2() {
//   const typedAnimation2 = new Typed(this.animation2Target, {
//     strings: ["lair now"],
//     typeSpeed: 30,
//     loop: true,
//   });
// }
// }
