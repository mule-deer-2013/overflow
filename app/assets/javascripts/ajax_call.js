$(document).ready(function() {

  $("form").on('ajax:success', function(e, data) {
    e.preventDefault();
    $('#responses').append(data)
    $('textarea').val("")
  })


});




  // $('form').submit( function(e) {
  //   e.preventDefault();
  //   $()
  // });
