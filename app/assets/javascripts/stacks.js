$(function() {
  $('.story').click(function() {
    var expanded_stack = $('#expanded-stack');
    var stack = $(this).parent();

    if (stack.hasClass('expanded')) {
      var cards = expanded_stack.find('.attached-card');
      if (cards.length > 0) {
        cards.prependTo(stack);
        cards.css('position', 'absolute');
        cards.reverseOrder();
        expanded_stack.toggle();
        stack.toggleClass('expanded');
      }      
    } else {
      var cards = stack.find('.attached-card');
      if (cards.length > 0) {
        cards.prependTo(expanded_stack);
        cards.css('position', 'relative');
        cards.reverseOrder();
        expanded_stack.css('top', stack.position().top + 114);
        expanded_stack.toggle();
        stack.toggleClass('expanded');
      }
    }
  });

  $('.state').sortable({
    connectWith:['.state'],
    cursor: 'move',
    items: 'li',
    update: function(){
      var data = {};
      data['state']   = $(this).attr('id');
      data['stories'] = $(this).sortable('toArray');

      $.ajax({
        type: 'post',
        data: data,
        dataType: 'script',
        url: '/stories/sort'
      })
    }
  });
});