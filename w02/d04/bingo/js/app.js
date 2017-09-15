$(function() {
var player1;
var player2;
var yellNumbers;

	function run() {
		$("#p1win").hide();
		$("#p2win").hide();
        $("#reset").hide();
	    player1 = generatePlayerNumbers();
	    player2 = generatePlayerNumbers();
	    showPlayerNumbers(player1, $("#player1"));
	    showPlayerNumbers(player2, $("#player2"));
	    yellButtonListener();
	}
    
	function reset() {
        $("#reset").show();
		$("#reset").click(function() {
            // clear($("#player1"), player1);
            // clear($("#player2"), player2);
            // clear($("#yell"), yellNumbers);
            clear();
			run();
		});
	}

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
        yellNumbers = [1,2,3,4,5,6,7,8,9,10];
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
        if(player1.length === 0 || player2.length === 0) {
            $("#yell").hide();
            $("h2").hide();
            reset();
        }
    	if(player1.length === 0) {
    		$("#p1win").show();
    	} else if(player2.length === 0) {
    		$("#p2win").show();
    	}
        
    }

    function removeBall(index, display, player) {
    	var child = display.children()[index];
        $(child).remove();
        player.splice(index, 1);
    }

    function clear() {
        $("#player1").empty();
        $("#player2").empty();
        $("#yell").empty();
        player1 = [];
        player2 = [];
        yellNumbers = [];
    }


    run();

});