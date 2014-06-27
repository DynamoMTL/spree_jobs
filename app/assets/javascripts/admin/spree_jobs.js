$(function(){
  $('.job-applicants-table tr').hover(function(){
    $(this).find('.actions').css('visibility', 'visible');
  }, function(){
    $(this).find('.actions').css('visibility', 'hidden');
  });

  $('.job-applicants-table .intro-link').click(function(){
    var text = $(this).find('.text').text();
    text = (text == 'Show Intro' && 'Hide Intro' || 'Show Intro');
    $(this).find('.text').text(text);
    $(this).closest('tr').find('.intro').toggle();
    return false;
  })
});