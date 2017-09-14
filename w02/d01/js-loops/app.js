// var trainers = ["ollie", "niall", "steve"]
// for (var i = 0; i < trainers.length; i++) {
// 	console.log(trainers[i]);
// }

// var j = 0;
// while (j < 5) {
// 	console.log("This loop has run " + j + " times.");
// 	j++;
// }

var myObject = {
	a: 1,
	b: 2,
	c: 3
}
for (var key in myObject) {
	console.log(key);
	console.log(myObject[key]);
}