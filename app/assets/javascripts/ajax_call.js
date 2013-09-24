$(document).ready(function() {

  $("form").on('ajax:error', function(e, data) {
    e.preventDefault();
    var $returnedObj = $(JSON.parse(data.responseText))
    $('body').append($returnedObj);
    $($returnedObj).fadeOut(3000, function() {
      $('div#error').remove();
    });
  });

  $("form.show_response_form").on('ajax:success', function(e, data) {
    $(this).after(data);
    //$(this).remove();
  });

  $("body").on('ajax:success', 'form#new_response', function(e, data) {
    e.preventDefault();
    $('#responses').append(data)
    $('textarea').val("")
    $('.response_form').remove();
  });

});
