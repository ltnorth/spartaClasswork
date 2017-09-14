var tryagain = true;

function add(num1, num2) {
    return num1 + num2;
}
function subtract(num1, num2) {
    return num1 - num2;
}
function multiply(num1, num2) {
    return num1 * num2;
}
function divide(num1, num2) {
    return num1 / num2;
}
function power(num1, num2) {
    return Math.pow(num1, num2);
}
function square(num1) {
    return Math.sqrt(num1);
}
function largestTwo(num1, num2) {
    if (num1 > num2) {
        return num1;
    } else {
        return num2;
    }
}
function largestThree(num1, num2, num3) {
    if (num1 > num2 && num1 > num3) {
        return num1;
    } else if (num2 > num3) {
        return num2;
    } else {
        return num3;
    }
}
var which = prompt("Which calculator  would you like to use?\n (1) Basic\n (2)Bonus");

function option(num) {
    if(num === 1) {
        return prompt('Choose your action:\n (a)dd\n (s)ubtract\n (m)ultiply\n (d)ivide\n (p)ower\n (sq)uare root') || "a";
    }
    if(num === 2) {
        return parseFloat(prompt('Enter value'));
    }
    if(num === 3) {
        return parseFloat(prompt('Enter second value'));
    }
    if(num === 4) {
        return parseFloat(prompt('Enter third value'));
    }
    if(num === 5) {
        return prompt('Choose your action:\n (l)argest of two numbers\n (la)rgest of three numbers');
    }
}

// Bonus, keep looping until we say stop
function run1() {

        // create an empty answer variable
        var answer = null;

        // get the user inputs
        var choice = option(1);
        
        // check all the options and perform the actions
        if(choice == "a") {

           answer = add(option(2), option(3));

        } else if(choice == "s") {
 
            answer = subtract(option(2), option(3));
 
        } else if(choice == "m") {
 
            answer = multiply(option(2), option(3));

        } else if(choice == "d") {

            answer = divide(option(2), option(3));

        } else if (choice == "p"){

            answer = power(option(2), option(3));

        } else if (choice == "sq") {

            answer = square(option(2));

        } else { // didn't match any of the options

          alert('Sorry, that option was not valid');

        }
        
        
        // only print the answer if we calculated one
        if(answer) alert(answer);


        // should we continue. "" is falsey "q" is truthy
        tryagain = !prompt('Enter to continue, or (q)uit');

    
}
function run2() {
    
        var choice = option(1);
        var answer = null;

        if (choice == "l") {

            answer = largestTwo(option(2), option(3));

        } else if (choice == "la") {

            answer = largestThree(option(2), option(3), option(4));

        } else { // didn't match any of the options

          alert('Sorry, that option was not valid');

        }

        // only print the answer if we calculated one
        if(answer) alert(answer);


        // should we continue. "" is falsey "q" is truthy
        tryagain = !prompt('Enter to continue, or (q)uit');
    
}
while(tryagain){
    if(which == 1){
        run1();
    } else {
        run2();
    }
}
