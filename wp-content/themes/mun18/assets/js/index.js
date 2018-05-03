//Countdown Timer
var countDownDate = new Date("Sep 30, 2018 00:00:00").getTime();

var x = setInterval(function() {

  var now = new Date().getTime();

  var distance = countDownDate - now;

  var days = Math.floor(distance / (1000 * 60 * 60 * 24));
  var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
  var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
  var seconds = Math.floor((distance % (1000 * 60)) / 1000);

  if (days<10){
  	days = "0"+days;
  }
  if (hours<10){
  	hours = "0"+hours;
  }
  if (minutes<10){
  	minutes = "0" + minutes;
  }
  if (seconds<10){
  	seconds = "0" + seconds;
  }

  jQuery('#beta-first .layer .timer .days').html("<div class='time'>" + days + "</div><p>days</p>");
  jQuery('#beta-first .layer .timer .hours').html("<div class='time'>" + hours + "</div><p>hours</p>");
  jQuery('#beta-first .layer .timer .minutes').html("<div class='time'>" + minutes + "</div><p>mins</p>");
  jQuery('#beta-first .layer .timer .seconds').html("<div class='time'>" + seconds + "</div><p>secs</p>");

}, 1000);


jQuery(document).ready(function(){
  var height = jQuery(window).height();

  jQuery(window).scroll(function(){
    if (jQuery(window).scrollTop() > height*3/4){
      jQuery(".navbar").show();
    }else{
      jQuery(".navbar").hide();
    }  
  })
  
})