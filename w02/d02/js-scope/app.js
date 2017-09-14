function joinStringsAndPrint( string1 , string2 ) {

    var newString =  string1 + string2;
    
    function printString( string ) {
    
        console.log(string);
        
        // Q3
        // console.log(newString);
        
        // Q4
        // console.log(string1 + string2);
    
    }
    
    printString( newString );
    printString( "run from outside joinStrings" );

    return newString;
    

}
var string1 = "hello, ";
var string2 = "world";
joinStringsAndPrint( string1 , string2 );

// Q1 

// Q2
// console.log(newString)