$(function() {


	// function run() {
		$("#p1win").hide();
		$("#p2win").hide();
	    var player1 = generatePlayerNumbers();
	    var player2 = generatePlayerNumbers();
	    showPlayerNumbers(player1, $("#player1"));
	    showPlayerNumbers(player2, $("#player2"));
	    yellButtonListener();
	    // reset();
	// }
    
	// function reset() {
	// 	$("<button>Reset</button>").addClass("reset").click(function() {
	// 		run();
	// 	});
	// }

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

    function showPlayerNumbers(playerNumbers, pDisplay) {
        $(playerNumbers).each(function(index, playerNumber) {
            makeBall(playerNumber, pDisplay);
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
            compareBalls(selectedNumber, $("#player1"), player1);
            compareBalls(selectedNumber, $("#player2"), player2);
            winCheck();
        });
    }

    function compareBalls(selectedNumber, display, player) {
        var index = player.indexOf(selectedNumber);
        if (index !== -1) {
           removeBall(index, display, player);
        }
    }

    function winCheck() {
    	if(player1.length === 0) {
    		$("#p1win").show();
    		$("#yell").hide();
    		$("h2").hide();
    	} else if(player2.length === 0) {
    		$("#p2win").show();
    		$("#yell").hide();
    		$("h2").hide();
    	}
    }

    function removeBall(index, display, player) {
    	var child = display.children()[index];
        $(child).remove();
        player.splice(index, 1);
    }

    // run();

});