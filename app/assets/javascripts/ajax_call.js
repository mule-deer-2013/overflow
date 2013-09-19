$(document).ready(function() {
  console.log("In javascript document ready");

  $('form').submit( function(e) {
    e.preventDefault();
    console.log('testing');
    $(this).toggle();
  });

});
