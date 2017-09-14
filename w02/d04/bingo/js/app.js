document.addEventListener("DOMContentLoaded", function() {
	var playerDisplay = document.getElementById("player1");

	// Player is dealt a hand of numbers randomly
		// Make an array of numbers
	
	var player = generatePlayerNumbers();
	showPlayerNumbers(player);
	yellButtonListener();
	console.log(player);

	// Generate a random number
	// Splice a number out of the array at the random number position

	function selectNumber(numbers) {
		var randomNumber = Math.floor(Math.random()*numbers.length);
		var number = numbers.splice(randomNumber, 1)[0];
		return number;
	}

	function generatePlayerNumbers() {
		var numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
		var player = [];

		for(var i = 0; i < 3; i++) {
			var selectedNumber = selectNumber(numbers);
			player.push(selectedNumber);
		}
		return player;
	}

	// Put bingo card on the page
		// innerHTML

	function showPlayerNumbers(playerNumbers) {
		for(var i = 0; i < playerNumbers.length; i++) {
			makeBall(playerNumbers[i], playerDisplay);
		}
	}

	function makeBall(number, display) {
		var ball = document.createElement("span");
		ball.className = "ball";
		ball.innerHTML = number;
		display.appendChild(ball);
	}
		

	
	// Yelled out numbers are yelled out on click
		// Click event
		// Array of starting numbers randomly selected
		// Put yelled out numbers on page

	function yellButtonListener() {
		var yell = document.getElementById("yell");
		var yelledNumbersDisplay = document.getElementById("yelledNumbers");
		var yellNumbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
		yell.addEventListener("click", function() {
			var selectedNumber = selectNumber(yellNumbers);
			makeBall(selectedNumber, yelledNumbersDisplay);
			compareBalls(selectedNumber, playerDisplay);
		});
	}
	

	// If yelled out number is same as player number, remove number from player

	function compareBalls(selectedNumber, display) {
		var index = player.indexOf(selectedNumber);
		if(index !== -1) {
			display.removeChild(display.children[index]);
			player.splice(index, 1);
		}
	}

	// If player has no numbers, BOINGO!

	// Add multiple players


});