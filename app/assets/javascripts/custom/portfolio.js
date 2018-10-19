$('.launch-lightbox').on('click', function() {
  var $portfolio = $('.portfolio-item');
  var $portfolioImages = $('.portfolio-images')
  var newImages = $(this).find('.item-images').children();

  $portfolioImages.append(newImages);


 });
  // console.log(newImages);
  // newImages.each(function(index, item) {
  //   console.log(item);
  // })
  $portfolioImages.empty();
  // $(this).find('.portfolio-data').show();
  $(this).find('.item-images').each(function() {

  })
  $portfolio.fadeIn();

  // $('.carousel-images').slick('reInit');
});

//slick carousel
$(document).ready(function(){
  $('.portfolio-images').slick({

  });
});

$('.close-icon').click(function() {
  $('.portfolio-item').fadeOut('fast');
})
