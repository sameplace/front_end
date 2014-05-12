// var Animate = function(id, height, animation){

// 	var element = document.getElementById(id);

// 	window.onscroll = function(){

// 		var imagePos = element.offsetTop;
// 		var topOfWindow = window.scrollY; 

// 		if(imagePos < topOfWindow+height) {
// 			element.className = element.className + " " + animation;
// 		}
// 	}
// }

var AnimateOnMouseOver = function(over, id, animation){	

	var element = document.getElementById(over);
	var bouncy = document.getElementById(id);

	element.onmouseover=function(){
		bouncy.className = bouncy.className + " " + animation;
	};
}