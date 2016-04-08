$(window).on('scroll', function(e){
  if ($(this).scrollTop() > 100) {
    $('.navbar-wagon').addClass('is-scrolling')
  } else {
    $('.navbar-wagon').removeClass('is-scrolling')
  }
})
