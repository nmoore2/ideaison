var $portfolioImages = $('.portfolio-images');

var createCarousel = function() {
  $portfolioImages.slick({
    dots: true,
    prevArrow: previousArrow,
    nextArrow: nextArrow
  });
}

$('.launch-lightbox').on('click', function() {
  var $portfolio = $('.portfolio-item');
  var $portfolioImages = $('.portfolio-images')
  var newImages = $(this).find('.item-images').children();
  var itemText = $(this).find('.item-text');
  var title = itemText.data('title');
  var people = itemText.data('people');
  var ideas = itemText.data('ideas');
  var threeThings = itemText.data('three-things');
  var cherry = itemText.data('cherry');
  var description = itemText.data('description');

  $('#project-title').html(title);
  $('#people').html(people);
  $('#ideas').html(ideas);
  $('#three-things').html(threeThings);
  $('#cherry').html(cherry);
  $('#project-description').html(description);

  $portfolioImages.empty();
  $portfolioImages.append(newImages.clone());

  createCarousel();

  $portfolio.fadeIn();

});

$('.close-icon').click(function() {
  $portfolioImages.slick("unslick");
})


$('.close-icon').click(function() {
  $('.portfolio-item').fadeOut('fast');
})
//
// $(".text-side").mCustomScrollbar({
//   // advanced:{ updateOnContentResize: true },
//   theme: 'dark'
// });
