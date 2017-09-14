// do not delete
function addTwo(num1,num2) {
	return num1+num2;
}
function addThree(num1,num2,num3) {
	return num1+num2+num3;
}
function multiplyTwo(num1,num2) {
	return num1*num2;
}
function reverseWord(word) {
	return word.split('').reverse().join('');
}
function increaseByPercentage(num,percent) {
	return num*(1+(percent/100));
}
function celciusToFahrenheit(celc) {
	return (celc*1.8)+32;
}
function fahrenheitToCelcius(fahr) {
	return (fahr-32)/1.8;
}
function stripVowels(word) {
	var wordArray = word.split('');
	var vowels = ["a", "e", "i", "o", "u"];
	for(var i = 0; i < wordArray.length; i++) {
		if(vowels.indexOf(wordArray[i]) !== -1) {
			wordArray.splice(i,1);
		}
	}
	return wordArray.join('');
}

runTests();