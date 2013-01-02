//= require_tree .

$(function() {

  
  $("#popup-box-bg").live("click", function(){
    hidePopup();
  });

  $('#fbtab').hover(function() {
    this.src = 'images/Like_hover.png';
  }, function() {
    this.src = 'images/Like.png';
  });
  $('#twtab').hover(function() {
    this.src = 'images/Follow_hover.png';
  }, function() {
    this.src = 'images/Follow.png';
  });
  $('#footer_fb').mouseover(function(){
    $(this).attr("src",'/images/footer_fb_hover.png');
  })
  .mouseout(function(){
    $(this).attr("src",'/images/footer_fb.png');
  });
  
  $('#footer_twitter').mouseover(function(){
    $(this).attr("src",'/images/footer_twitter_hover.png');
  })
  .mouseout(function(){
    $(this).attr("src",'/images/footer_twitter.png');
  });

});

function open_in_new_tab(url)
{
  window.open(url, '_blank');
  window.focus();
}

// popup boxes - pass popup box ID as parameter (needs "popup-box-bg" empty div that is used as mask)
function showPopup(element_id) {
  $("#popup-box-bg").show();
  $('.active-popup').removeClass('active-popup').hide();
  $('#' + element_id).addClass('active-popup');
  $('#' + element_id).fadeIn('fast', function (){
    //resetPopupSize(element_id);
  });
}



function hidePopup() {
  $('#popup-box-bg').fadeOut('fast');
  $('.active-popup').hide();
  $('.active-popup').removeClass('active-popup');
}


function showLoader(element_id) {
  var popupHeight = $(element_id).height();
  var popupWidth = $(element_id).width();
  if(popupWidth == 0) popupWidth = 400;
  if(popupHeight == 0) popupHeight = 200;
  $(element_id).html("<div class='loader' style='width: " + popupWidth + "px; height: " + popupHeight + "px;'><img src='/assets/loading.gif' /></div>");
}