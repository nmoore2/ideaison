var $mouseMessage = $('#mouse-message');

//detectmousedrag
var isDragging = false;
$('#canvas')
.mousedown(function() {
  isDragging = true;
})
.mouseup(function() {
  isDragging = false;
});

// oil painting
function OilPainting(){

  var canvas;
	var context;

	var width;
	var height;

	var startPos = {x: window.innerWidth/2, y: window.innerHeight/2};
	var prevPos = {x: window.innerWidth/2, y: 0};
	var dist = {x: 0, y: 0};
	// var colour = '#'+Math.floor(Math.random()*16777215).toString(16);
	var colour = '#fff';
  var pallete = ['F6DAF7', 'E77EE2', 'FFF'];


	this.initialize = function(){
		canvas  = document.getElementById("canvas");
		context = canvas.getContext('2d');

		width = window.innerWidth
		height = window.innerHeight

		canvas.width = width;
		canvas.height = height;

    $mouseMessage.fadeIn('slow');

		canvas.addEventListener('mousemove', MouseMove, false);
		canvas.addEventListener('click', MouseDown, false);
		canvas.addEventListener('dblclick', MouseDbl, false);

	}


	var MouseMove = function(e) {

  $('#mouse-message').css({
    left:  e.pageX + 60,
    top:   e.pageY + 30
  });

		var distance = Math.sqrt(Math.pow(prevPos.x - startPos.x, 2) +
								 Math.pow(prevPos.y - startPos.y, 2));

		var a = distance * 10 * (Math.pow(Math.random(), 2) - 0.5);

		var r = Math.random() - 0.5;

		var size = (Math.random() * 15) / distance;

		dist.x = (prevPos.x - startPos.x) * Math.sin(0.5) + startPos.x;
		dist.y = (prevPos.y - startPos.y) * Math.cos(0.5) + startPos.y;

		startPos.x = prevPos.x;
		startPos.y = prevPos.y;

		prevPos.x = (e.layerX);
		prevPos.y = (e.layerY);

	   // ------- Draw -------
     var draw = function() {
     $mouseMessage.fadeOut('fast');

	   var lWidth = (Math.random()+20/10-0.5)*size+(1-Math.random()+30/20-0.5)*size;
	   context.lineWidth = lWidth;
	   context.strokeWidth = lWidth;

	   context.lineCap = 'round';
	    context.lineJoin = 'round';

	   context.beginPath();
	   context.moveTo(startPos.x, startPos.y);
	   context.quadraticCurveTo(dist.x, dist.y, prevPos.x, prevPos.y);

	   context.fillStyle = colour;
	   context.strokeStyle = colour;

	   context.moveTo(startPos.x + a, startPos.y + a);
	   context.lineTo(startPos.x + r + a, startPos.y + r + a);

	   context.stroke();
	   context.fill();

	   context.closePath();
   }
   if (isDragging) {
     draw();
     $mouseMessage.hide();
   } else {
   }
 };


  var counter = 0;

	var MouseDown = function(e) {
		e.preventDefault();

    if (counter >= pallete.length - 1) {
      counter = 0;
    } else {
      counter += 1;
    }
    colour = '#' + pallete[counter];
		context.fillStyle = colour;
	    context.strokeStyle = colour;
	}

	var MouseDbl = function(e) {
		e.preventDefault();
		context.clearRect(0, 0, width, height);
    $mouseMessage.fadeIn('slow');
	}

  $('#canvas').mouseleave(function() {
    // $mouseMessage.fadeOut('fast');
  })


}

var app = new OilPainting();
app.initialize();
