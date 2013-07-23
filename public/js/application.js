$(document).ready(function() 
{
  $(this).keyup(function(event)
  {
    // if p pressed
    if (event.keyCode == 80) 
    {
      $('#a').find('.active').removeClass('active').next().addClass('active');
    }
    // if q pressed
    else if (event.keyCode == 81) 
    {
      $('#b').find('.active').removeClass('active').next().addClass('active');
    }
    // if winner
    if(($('#a li:last-child()').attr('class') == 'active') || ($('#b li:last-child()').attr('class') == 'active'))
     {
      alert($('li:last-child.active').parent().attr('id') + ' won!');
      $(document).unbind('keyup');
    }
  });
});

