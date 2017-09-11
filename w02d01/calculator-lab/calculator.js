
var calc = prompt("Which calculator? (B)asic or BMI?");
var answer;
if(calc.toLowerCase() === "b"){
	var choice = prompt('Choose your action (a)dd (s)ubtract (m)ultiply (d)ivide (sq)uare root (p)ower') || "a";
	

	if(choice != "sq" && choice != "p"){
	    var value1 = prompt('Enter first value'); 
	    var value2 = prompt('Enter the second value');

	    switch (choice) {
	    	case "a":
	    		answer = parseFloat(value1) + parseFloat(value2);
	    		console.log(answer);
	    		break;
	    	case "s":
	    		answer = value1 - value2;
	    		console.log(answer);
	    		break;
	    	case "m":
	    		answer = value1 * value2;
	    		console.log(answer);
	    		break;
	    	case "d":
	    		answer = value1 / value2;
	    		console.log(answer);
	    		break;
	    	default:
	    		answer = parseFloat(value1) + parseFloat(value2);
	    		console.log(answer);
	    }
	} else {
		var value = prompt("Enter the base value");
		switch (choice) {
			case "sq":
				answer = Math.sqrt(value);
				console.log(answer);
				break;
			case "p":
				var power = prompt("What power?");
				answer = Math.pow(value, power);
				console.log(answer);
				break;
		}
	}
} else {
	var height = prompt("What is your height in metres?");
	var weight = prompt("What is your weight in kilograms?");
	answer = weight/(height*height);
	console.log("Your BMI is " + answer + ". You are fat!");
}











