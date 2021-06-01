$(document).ready(function () {
  $(window).scroll(function () {
    var scroll = $(window).scrollTop();
    if (scroll > 80) {
      $(".navbar").css("background", "white");
      $(".navbar").css("opacity", "100%");
      $(".navbar").css("box-shadow", "0 0 6px 0 rgb(0 0 0 / 14%)");
    }
    else {
      $(".navbar").css("background", "rgba(0,0,0,0)");
      $(".navbar").css("box-shadow", "1px 1px 2px rgba(0,0,0,0)");
    }
  })
})

function searchToggle(obj, evt) {
  var container = $(obj).closest('.search-wrapper');
  const closeBtn = document.getElementById("close");
  const conan = document.getElementById("conan");

  if (!container.hasClass('active')) {
    container.addClass('active');
    evt.preventDefault();
    closeBtn.style.visibility = "visible";
    conan.style.width = "16px";
    conan.style.height = "16px";
  }
  else if (container.hasClass('active') && $(obj).closest('.input-holder').length == 0) {
    container.removeClass('active');
    // clear input
    container.find('.search-input').val('');
    closeBtn.style.visibility = "hidden";
    conan.style.width = "22px";
    conan.style.height = "22px";
  }
}
