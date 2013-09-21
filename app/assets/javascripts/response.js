var Answer = {
  init: function(){
    $('.new-answer').on('click', function(e){
      e.preventDefault();
      $('.add-answer-form').toggleClass("hidden");
    });
  }
};

var Comment = {
  init: function(){
    $('.new-comment').on('click', function(e){
      e.preventDefault();
      $('.add-comment-form').toggleClass("hidden");
    });
  }
};

$(document).ready(function(){
  Answer.init();
  Comment.init();
});
