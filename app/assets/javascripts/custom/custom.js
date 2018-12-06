$('.hamburger').click(function() {
  $(this).toggleClass('is-active');
});
// Custom Carousel Arrows
var previousArrow = '<svg class="prev" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 24 24"><defs><style>.cls-1{isolation:isolate;}.cls-2{opacity:0.4;mix-blend-mode:multiply;}.cls-3{fill:#fff;}.cls-4{fill:none;}</style></defs><title>PBS_arrows</title><g class="cls-1"><g id="Layer_1" data-name="Layer 1"><image class="cls-2" width="13" height="18" transform="translate(6.22 3.84)" xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAA4AAAATCAYAAACgADyUAAAACXBIWXMAAAsSAAALEgHS3X78AAABKklEQVQ4T53Ty2pUQRDG8V8Ns1FchFloEMlS8gTBy9JHGOI7CnmBLFxJTPICIUsTvOAgQxzcKMdTLrrndmY4Qyzobij6X1Vd/VVkpv+x4a4LETHAAG1mtgt/X8aIGGKvrjvcZWbTC1boMY5wiCtc4EdmtltLXYFeY4znuMRXJfOfDbADHdfzIb7gkfLesu2ARviFb/Vs18AeaIqPOMUtGlCbM6jQGO+Usn7jO07wFk8xzEyZucg4xDO8wYsaBD7jvdLNyfwr6LzxPjYHG53o1b9WRe0DquQys42IKc5rsLBszkv8retDRKwLIDObiJjgzNLm8Cv8xI1tAtgCZ4Ue4IkVAWwopwO3SqZ9XGNWfTtFPsKBkmmGT8qEtLvGaqBUFUrZzXwme8E++we0xYXFBKA3fgAAAABJRU5ErkJggg=="/><polygon class="cls-3 polygon" points="16 16.59 11.42 12 16 7.41 14.59 6 8.59 12 14.59 18 16 16.59"/><path class="cls-4" d="M0,0H24V24H0Z"/></g></g></svg>'

var nextArrow = '<svg class="next" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 24 24"><defs><style>.cls-1{isolation:isolate;}.cls-2{opacity:0.4;mix-blend-mode:multiply;}.cls-3{fill:#fff;}.cls-4{fill:none;}</style></defs><title>PBS_arrows</title><g class="cls-1"><g id="Layer_1" data-name="Layer 1"><image class="cls-2" width="13" height="18" transform="translate(5.84 3.84)" xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAA4AAAATCAYAAACgADyUAAAACXBIWXMAAAsSAAALEgHS3X78AAABNklEQVQ4T53TvUqdQRDG8d+8vDZiIcZYiAghIJL0IoiVN2DjPYrkBlJYBePHBYipAmJSiJFTCDaHMxa7bzxfHtGBZWF2/8w8+8xGZnpPtOOJiGjQYJCZg0mk3huuGBEtFuvqoZeZ/ZlghVawhU1c4QK30+C2Qo1SZQsH+FrBOZxExATcaezATXzBZ3ysedPgDhwomq7wS2l5CTueYwRuITMHEdFTNM0plXZmwf/tyMx+RNziBFHhXSxXOJXOfkTE3YiPQ/AZPuCTon0F2/iH3+h14t8cI+CQl9vYw1o96ro4xg36MlMdghario9H+IPHuh/V/CrazNRBjfII+zh8DcrMqQOwgXnc4Se+KS89cwAucY6/dX3H6TjE5JAvYR0LeMA17qcN+fi3apQuQjG8/9KfHAHfEk+crZxBhPplGQAAAABJRU5ErkJggg=="/><polygon class="cls-3" points="8.59 16.59 13.17 12 8.59 7.41 10 6 16 12 10 18 8.59 16.59"/><path class="cls-4" d="M0,0H24V24H0Z"/></g></g></svg>'

$(document).ready(function() {
  $('.testimonials-carousel').slick({
    prevArrow: previousArrow,
    nextArrow: nextArrow,
    dots: true
  })
});
