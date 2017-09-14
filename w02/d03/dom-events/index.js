// write code here
document.addEventListener("DOMContentLoaded", function(){
	var button = document.getElementById("myButton");
	var form = document.getElementById("myForm");
	var buttons = document.getElementsByClassName("myButtons");
	var textBox = document.getElementById("firstname");

	button.addEventListener("click", function(){
		console.log(this);
	});

	form.addEventListener("submit", function(event){
		event.preventDefault();
		var firstName = textBox.value;
		if(firstName) {
			console.log(firstName);
		} else {
			console.log("Please enter a name.");
		}
		return this.submit();

	});
	
	for(var i = 0; i < buttons.length; i++) {
		buttons[i].addEventListener("click", function() {
			console.log(this.value + " clicked");
		});
	}
});
