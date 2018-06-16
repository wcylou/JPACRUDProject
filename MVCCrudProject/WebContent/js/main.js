$(document).ready(function() {
	
	// Set the date we're counting down to
	var countDownDate = new Date("Jul 15, 2018 12:45:00").getTime();

	// Update the count down every 1 second
	var x = setInterval(function() {

	  // Get todays date and time
	  var now = new Date().getTime();

	  // Find the distance between now an the count down date
	  var distance = countDownDate - now;

	  // Time calculations for days, hours, minutes and seconds
	  var days = Math.floor(distance / (1000 * 60 * 60 * 24));
	  var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
	  var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
	  var seconds = Math.floor((distance % (1000 * 60)) / 1000);

	  // Display the result in the element with id="demo"
	  document.getElementById("countdown").innerHTML = days + "d " + hours + "h "
	  + minutes + "m " + seconds + "s ";

	  // If the count down is finished, write some text 
	  if (distance < 0) {
	    clearInterval(x);
	    document.getElementById("demo").innerHTML = "EXPIRED";
	  }
	}, 1000);
	
	var $rows = $('#table tr');
	$('#search').keyup(function() {
	    var val = $.trim($(this).val()).replace(/ +/g, ' ').toLowerCase();
	    
	    $rows.show().filter(function() {
	        var text = $(this).text().replace(/\s+/g, ' ').toLowerCase();
	        return !~text.indexOf(val);
	    }).hide();
	});
});

$(document).ready(function() {
	   var $rows = $('#table .searchRows');
	   $('#search').keyup(function() {
	     var val = $.trim($(this).val()).replace(/ +/g, ' ').toLowerCase().split(' ');

	     $rows.hide().filter(function() {
	       var text = $(this).text().replace(/\s+/g, ' ').toLowerCase();
	       var matchesSearch = true;
	       $(val).each(function(index, value) {
	         matchesSearch = (!matchesSearch) ? false : ~text.indexOf(value);
	       });
	       return matchesSearch;
	     }).show();
	   });
});
