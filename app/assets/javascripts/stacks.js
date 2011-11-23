$(function() {
  $('.story').click(function() {
    $(this).parent().toggleClass('expanded');
    $(this).parent().find('.card').reverseOrder();
  });
});
