
function runTests() {

  console.log('Starting tests');

  // test the addTwo function
  describe("Given two numbers, addThree should return their sum");
  assertEquals(addTwo(2,5) , 7);

  // test the addThree function
  describe('Given three numbers, addThree should return their sum');
  assertEquals(addThree(10,5,3) , 18);

  // test the multiplyTwo function
  describe('Given two numbers, multiplyTwo should return their product');
  assertEquals(multiplyTwo(10,5) , 50);

  // test the reverseWord function
  describe('Given a word, reverseWord should return it with the letters reversed');
  assertEquals(reverseWord("sparta") , "atraps");

  describe('Given a total and percentage, increaseByPercentage should increase the total by that percentage');
  assertEquals(increaseByPercentage(10 , 50) , 15);

  // test the celciusToFahrenheit function
  describe('Given a temperature in celcius, celciusToFahrenheit should return it in fahrenheit');
  assertEquals(celciusToFahrenheit(200) , 392);

  // test the fahrenheitToCelcius function
  describe('Given a temperature in fahrenheit, fahrenheitToCelcius should return it in celcius');
  assertEquals(fahrenheitToCelcius(50) , 10);

  // test the strip vowels function
  describe('Given a word, stripVowels should return the string with no vowels in it');
  assertEquals(stripVowels("Sparta") , "Sprt");

}

function testFailed(value1 , value2) {

  console.log(`%c Test failed. Expected : ${value2} Actual : ${value1}  `, 'color: red');

}

function testPassed() {

  console.log('%c Test passed!', 'color: green');

}

function describe(message) {

  console.log('%c ' + message, 'color: purple');

}

function assertEquals(value1 , value2) {

  if(value1 != value2)
    testFailed(value1 , value2);
  else
    testPassed();

}