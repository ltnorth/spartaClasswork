$(function() {

    // Player is dealt a bingo board of numbers randomly
        // Make an array of numbers
        // Generate a random number
        // Slice a number out of the array at the random number position
    var player = generatePlayerNumbers();
    showPlayerNumbers(player);
    yellButtonListener();
    console.log(player);
    
    function selectNumber(numbers) {
        var randomNumber = Math.floor(Math.random()*numbers.length);
        var number = numbers.splice(randomNumber, 1)[0];
        return number;
    }

    function generatePlayerNumbers() {
        var numbers = [1,2,3,4,5,6,7,8,9,10];
        var player = [];
        for (var i = 0; i < 3; i++) {
            var selectedNumber = selectNumber(numbers); 
            player.push(selectedNumber);
        }
        return player;
    }

    function showPlayerNumbers(playerNumbers) {
        $(playerNumbers).each(function(index, playerNumber) {
            makeBall(playerNumber, $("#player1"));
        });
    }

    function makeBall(number, display) {
        var ball = $("<span>"+number+"</span>").addClass("ball");
        display.append(ball);
    }

    function yellButtonListener() {
        var yellNumbers = [1,2,3,4,5,6,7,8,9,10];
        $("#yell").click(function() {
            var selectedNumber = selectNumber(yellNumbers);
            makeBall(selectedNumber, $("#yelledNumbers"));
            compareBalls(selectedNumber, $("#player1"));
        });
    }

    function compareBalls(selectedNumber, display) {
        var index = player.indexOf(selectedNumber);
        if (index !== -1) {
            var child = display.children()[index];
            $(child).remove();
            player.splice(index, 1);
        }
    }

    function winCheck(player) {
    	if(player.length === 1) {
    		
    	}
    }
    // Put bingo board numbers on the page
        // innerHTML

    // On click, yelled out numbers are yelled out
        // Click event
        // Array of starting numbers randomly selected

    // Put yelled out numbers on the page

    // IF yelled out number is same as player number, remove number from player

    // IF player has no numbers, BOINGO!

    // Add multiple players
});