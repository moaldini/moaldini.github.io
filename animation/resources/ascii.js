var currentAnimation;
var interval; 
var speed = 250; 
var size; 
 
window.onload = () => {
    heartOnload();
    pageLoad();
}
function heartOnload() {
    // add a "heart" icon to tell the student that the file was loaded properly
    var heart = document.createElement("span");
    heart.id = "galleryheart";
    heart.innerHTML = "&hearts;";
    heart.style.color = "red";
    heart.style.backgroundColor = "transparent";
    heart.style.fontFamily = "Arial, sans-serif";
    heart.style.fontSize = "24pt";
    heart.style.lineHeight = "24pt";
    heart.style.position = "fixed";
    heart.style.top = "0px";
    heart.style.left = "0px";
    document.body.appendChild(heart);
}

// sets up event handlers for all the controls
function pageLoad() {
	document.getElementById("stopButton").disabled = true;
	document.getElementById("startButton").onclick = play;
	document.getElementById("stopButton").onclick = stop;
	document.getElementById("animation").onchange = changeAnimation;
	document.getElementById("size").onchange = changeSize;

	var radio = document.getElementsByName("speed");
	for (var i = 0; i < radio.length; i++) { // using a loop to add event handlers to the 3 radio buttons
		var currentSpeed = radio[i].value;
		radio[i].onclick = (function(currentSpeed) { // update the speed, keep displaying frames during an animation
								return function(){
									speed = currentSpeed;
									if (interval) {
										clearInterval(interval);
									}
									if (document.getElementById("startButton").disabled){
										interval = setInterval(function() {displayNextFrame(currentAnimation);}, speed);
									}
								};
							})(currentSpeed);
	}
}

// change the animation when a different one is selected
function changeAnimation() {
	var newAnimation = document.getElementById("animation").value;
	var textarea = document.getElementById("mytextarea");
	textarea.value = ANIMATIONS[newAnimation];
}

// process the animation and display it
function play() {
	document.getElementById("stopButton").disabled = false;
	document.getElementById("startButton").disabled = true;
	document.getElementById("animation").disabled = true;
	var textarea = document.getElementById("mytextarea");
	var allFrames = textarea.value.split("=====\n");
	currentAnimation = allFrames;
	interval = setInterval(function() {displayNextFrame(currentAnimation);}, speed);
}

// stops the animation and displays all frames
function stop() {
	document.getElementById("startButton").disabled = false;
	document.getElementById("animation").disabled = false;
	changeAnimation();
	clearInterval(interval);
	document.getElementById("stopButton").disabled = true;
}

// a helper function that displays the next frame
function displayNextFrame(animation) {
	var textarea = document.getElementById("mytextarea");
	var currentFrame = animation.shift();
	textarea.value = currentFrame;
	animation.push(currentFrame);
	currentAnimation = animation;
}

// change the font size of the output
function changeSize() {
	var size = document.getElementById("size").value;
	document.getElementById("mytextarea").style.fontSize = size;
}
