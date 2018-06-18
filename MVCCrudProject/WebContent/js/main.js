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

$(document).ready(function() {
	$('example').popover('hide');
	$('#example').click(function(){
	$('#example').popover('show');});
	$('example1').popover('hide');
	$('#example1').click(function(){
	$('#example1').popover('show');});
	$('example2').popover('hide');
	$('#example2').click(function(){
	$('#example2').popover('show');});
	$('example3').popover('hide');
	$('#example3').click(function(){
	$('#example3').popover('show');});
	$('example4').popover('hide');
	$('#example4').click(function(){
	$('#example4').popover('show');});
	$('example5').popover('hide');
	$('#example5').click(function(){
	$('#example5').popover('show');});
	$('example6').popover('hide');
	$('#example6').click(function(){
	$('#example6').popover('show');});
	$('example7').popover('hide');
	$('#example7').click(function(){
	$('#example7').popover('show');});
	$('example8').popover('hide');
	$('#example8').click(function(){
	$('#example8').popover('show');});
	$('example9').popover('hide');
	$('#example9').click(function(){
	$('#example9').popover('show');});
	$('example10').popover('hide');
	$('#example10').click(function(){
	$('#example10').popover('show');});
	$('example11').popover('hide');
	$('#example11').click(function(){
	$('#example11').popover('show');});
});