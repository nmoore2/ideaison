$('.launch-contact-modal').on('click', function() {
  $('.contact-modal').fadeIn('fast');
});

$('.contact-modal .close-icon').on('click', function() {
  $('.contact-modal').fadeOut('fast');
})
$('form').floatinglabel();

$("#new_contact").validate();

$('#notice').delay(3000).fadeOut();
