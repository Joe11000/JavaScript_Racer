$(document).ready(function() 
{
  $(this).keyup(function(event)
  {
    // if p pressed
    if (event.keyCode == 80) 
    {
      $('#playerA').find('.active').removeClass('active').next().addClass('active');
    }
    // if q pressed
    else if (event.keyCode == 81) 
    {
      $('#playerB').find('.active').removeClass('active').next().addClass('active');
    }
    // if winner
    if(($('#playerA li:last-child()').attr('class') == 'active') || ($('#playerB li:last-child()').attr('class') == 'active'))
     {
      alert($('ul li:last-child.active').parent().attr('class') + ' won!');
      $(document).unbind('keyup');
    }
  });
});

