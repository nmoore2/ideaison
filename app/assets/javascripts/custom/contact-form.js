$('.launch-contact-modal').on('click', function() {
  $('.contact-modal').fadeIn();
});

$('.contact-modal .close-icon').on('click', function() {
  $('.contact-modal').fadeOut();
})
$('form').floatinglabel();
