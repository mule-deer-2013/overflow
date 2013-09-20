$(document).ready(function() {

  $("form").on('ajax:error', function(e, data) {
    e.preventDefault();
    var $returnedObj = $(JSON.parse(data.responseText))
    $('body').append($returnedObj);
    $($returnedObj).fadeOut(3000, function() {
      $('div#error').remove();
    });
  });
  $("form").on('ajax:success', function(e, data) {
    e.preventDefault();
    $('#responses').append(data)
    $('textarea').val("")
    console.log(data);
  });


});




  // $('form').submit( function(e) {
  //   e.preventDefault();
  //   $()
  // });
