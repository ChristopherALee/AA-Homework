// Simple Timeout
window.setTimeout(function () {
  alert('HAMMERTIME');
}, 5000);



// Timeout Plus Closure
const hammerTime = function(time) {
  alert(`${time} is hammertime!`);
}
window.setTimeout(hammerTime, 5000);
