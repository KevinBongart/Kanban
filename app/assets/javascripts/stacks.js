$(function() {
  var update_inactive_users_text = function(){
    var users = $('#inactive-users .user').length;
    var text  = '';

    switch(users) {
    case 0:
      text = 'Nobody is slacking off';
      break;
    case 1:
      text = 'is slacking off';
      break;
    default:
      text = 'are slacking off';
    }

    $('#inactive-users h3').html(text);
  };

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
    start: function(){
      $('.state .drop-zone').toggle();
    },
    stop: function(){
      $('.state .drop-zone').toggle();
    },
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

  $('.users').sortable({
    connectWith:['.users'],
    cursor: 'move',
    items: 'img',
    start: function(){
      $('.users').addClass('enabled');
    },
    stop: function(){
      $('.users').removeClass('enabled');
      update_inactive_users_text();
    },
    update: function(){
      var data = {};
      data['story'] = $(this).attr('id');
      data['users'] = $(this).sortable('toArray');

      $.ajax({
        type: 'post',
        data: data,
        dataType: 'script',
        url: '/users/sort'
      })
    }
  });
});