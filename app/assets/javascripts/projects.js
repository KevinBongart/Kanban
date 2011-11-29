$(function() {
  $('#new-story-button').click(function(){
    $('#new-story').toggle();
    $('#story_name').focus();
    var link = $(this).children('a');
    if (link.html() == '+') {
      link.html('-');
    } else {
      link.html('+');
    }
  });
});