$(function() {
  $('.story').click(function() {
    var stack = $(this).parent();
    var expanded_stack = $('#expanded-stack');
    var cards = stack.find('.attached-card');

    stack.toggleClass('expanded');
    cards.prependTo(expanded_stack);
    cards.reverseOrder();
    expanded_stack.css('top', stack.position().top + 132);
    expanded_stack.toggle();
    cards.offset(stack.offset());
    cards.animate({ top: 0, left: 0 }, 300);
  });
});
