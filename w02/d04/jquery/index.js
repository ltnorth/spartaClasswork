$(function() {
	// Get element from the DOM
	// var count = $("#count");
	// Create new element to add to the DOM
	// var li = $("<li>New thing</li>");
	// Add to the DOM
	// $("#list").append(li);

	var todos = ["Food shop", "Wash clothes", "Pay bills"];

	// New loop
	$(todos).each(function(index, todo) {
		console.log(todo);
	});

	// .html - changing text on the page
	$("#count").html("5");

	// .css - changing the CSS on the page
	$("#count").css("color", "red");

	// Don't have to loop through multiples of the same thing
	$("li").css("font-size", "50px");
	$("li").addClass("done");

	// Chaining!
	$("#count").html("5").css("color", "red");

	// Events!
	$("#myButton").click(function() {
		console.log("button clicked!");
	});

	// Another way of doing it
	$("#myButton").on("click", function() {
		console.log("another way");
	});
});