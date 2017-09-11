// var money = prompt("How much dollar?");
// var numberOfDrinks = prompt("How many drinks have you had?");

// if (money > 10 && numberOfDrinks < 3) {
// 	console.log("Buy another drink!");
// } else{
// 	var crisps = prompt("Are the crisps free?").toLowerCase();
// 	if (money > 5 || crisps == "yes") {
// 		console.log("Buy food!");
// 	} else {
// 		console.log("Go home!");

// 	}
// }
var name = "Tim";

if (name === "Bob") {
	console.log("Hi Bob");
} else if (name === "Tim") {
	console.log("Yo Tim");
} else if (name === "Steve") {
	console.log("Aight Steve-o");
} else {
	console.log("Hello faceless one");
}

switch (name) {
	case "Bob":
		console.log("Hi Bob");
		break;
	case "Tim":
		console.log("Yo Tim");
		break;
	case "Steve":
		console.log("Aight Steve-o");
		break;
	default:
		console.log("Hello faceless one");
}