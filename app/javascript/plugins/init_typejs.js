import Typed from 'typed.js';
const initTyped = () => {
  const element = document.querySelector('.typed-js');
  if (element) {
    new Typed(".typed-js", {
      strings: ["ave the adventure of your life"],
      typeSpeed: 150,
      loop: true,
      loopSpeed: 10,
      loopCount: Infinity,
      showCursor: false,
    });
  }
};
export { initTyped };
