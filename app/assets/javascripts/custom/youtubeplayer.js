$('.play-icon').on('click', function() {

  $('#lightbox').show();
  console.log('foo')

})
var tag = document.createElement('script');
// 2. This code loads the IFrame Player API code asynchronously.
     var tag = document.createElement('script');

     tag.src = "https://www.youtube.com/iframe_api";
     var firstScriptTag = document.getElementsByTagName('script')[0];
     firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);

     // 3. This function creates an <iframe> (and YouTube player)
     //    after the API code downloads.
     var player;
     function onYouTubeIframeAPIReady() {
       player = new YT.Player('player', {
         height: '600',
         width: '100%',
         videoId: $('#player').data('video-id'),
         events: {
           'onReady': onPlayerReady,
           'onStateChange': onPlayerStateChange
         }
       });
     }

     // 4. The API will call this function when the video player is ready.

     function onPlayerReady(event) {
       $('.cta-btn').click(function() {
         $('#lightbox').fadeIn();
         player.playVideo();
       })
       $('.close-btn').click(function() {
         $('#lightbox').fadeOut();
         player.stopVideo();
       })
     }


     // 5. The API calls this function when the player's state changes.
     //    The function indicates that when playing a video (state=1),
     //    the player should play for six seconds and then stop.
     var done = false;
     function onPlayerStateChange(event) {

     }
     function stopVideo() {
       player.stopVideo();
     }
