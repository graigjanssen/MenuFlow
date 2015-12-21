// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function(){
  orderTimer();
});

function colorOrders() {
  var orderTimes = $('.timestamp');
  for (var i = 0; i < orderTimes.length; i++) {
    var d = new Date($(orderTimes[i]).text());
    if ((Date.now() - d) <= 420000) {
      $(orderTimes[i]).css('color','rgb(5, 237, 14)');
    } else if ((Date.now() - d) <= 900000) {
      $(orderTimes[i]).css('color','rgb(235, 240, 5)');
    } else if ((Date.now() - d) > 900000) {
      $(orderTimes[i]).css('color','rgb(240, 5, 5)');
    }
  }
  console.log('checked');
}

function orderTimer() {
  setInterval(colorOrders, 10000);
  colorOrders();
}
