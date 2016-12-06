# FCC Lessons 129 - 139

## 10/13/2016

***

#### 129: Increment a Number with JavaScript

* i++; is the same as i = i + 1;

* since myVar is already defined below we do NOT need to add the = sign, JS will know to update the variable we refrence.  


### Code:

```Javascript

var myVar = 87;

// Only change code below this line
myVar++ ;


```

***

#### 130: Decrement a Number with JavaScript

* i--; is the same as i = i - 1;

* since myVar is already defined below we do NOT need to add the = sign, JS will know to update the variable we refrence.  


### Code:

```Javascript

var myVar = 87;

```

*** 

#### 130: Create Decimal Numbers with Javascript

* Decimals/floating point numbers can also be stored in JS.   


### Code:

```Javascript

var myDecimal = 3.14;

```

***

#### 131: Multiply Two Decimals with JavaScript

* We can perform calculations in JS.   


### Code:

```Javascript

var product = 1.0 * 5.0;

```

***

#### 132: Divide Two Numbers with JavaScript

* We can perform basic calculations in JS.   


### Code:

```Javascript

var quotient = 2.2 / 1.0;

```

***

#### 133: Find a Remainder in JavaScript

* We can perform  calculations in JS.   

* The remainder operator % gives the remainder of the division of 2 numbers, this is oftentimes refered to as the modulus operator, but the remainder operator does not work on negative numbers.  

### Code:

```Javascript

var remainder = 14 % 6;

```

***

#### 134: Compound Assignment(AKA: Variable subtraction)

* We can perform  calculations in JS.   

* We can use operators to make code more streamlined/succinct with the -= operator.  In this case myVar = myVar - 5 is the same as myVar -= 5.  

### Code:

```Javascript


var a = 11;
var b = 9;
var c = 3;

// Only modify code below this line

a -= 6;
b -= 15;
c -= 1;

```

***

#### 135: Compound Assignment(AKA: Variable subtraction)

* We can perform  calculations in JS.   

* We can use operators to make code more streamlined/succinct with the *= operator.  In this case myVar = myVar * 5 is the same as myVar *= 5.  

### Code:

```Javascript

var a = 5;
var b = 12;
var c = 4.6;

// Only modify code below this line

a *= 5;
b *= 3;
c *= 10;

```

***

#### 136: Compound Assignment(AKA: Variable subtraction)

* We can perform  calculations in JS.   

* We can use operators to make code more streamlined/succinct with the /= operator.  In this case myVar = myVar / 5 is the same as myVar /= 5.  

### Code:

```Javascript

var a = 48;
var b = 108;
var c = 33;

// Only modify code below this line

a /= 12;
b /= 4;
c /= 11;

```

***

#### 137: Convert Celcius to Farenheit

* The algorithm to convert from Celsius to Fahrenheit is the temperature in Celsius times 9/5, plus 32.

* You are given a variable celsius representing a temperature in Celsius. Use the variable fahrenheit already defined and apply the algorithm to assign it the corresponding temperature in Fahrenheit.



### Code:

```Javascript
function convertToF(celsius) {
  var fahrenheit;
  // Only change code below this line
  
  fahrenheit = (celsius * 9/5) + 32;
  
  // Only change code above this line
  return fahrenheit;
}

// Change the inputs below to test your code
convertToF(30);


```

***

#### 138: Declare String Variables

* Previously we have used the code var myName = "your name"; "your name" is called a string literal. It is a string because it is a series of zero or more characters enclosed in single or double quotes.


### Code:

```Javascript

// Example
var firstName = "Alan";
var lastName = "Turing";

// Only change code below this line

var myFirstName = "Hello"
var myLastName = "World"


```

***

#### 139: Escaping String Literal Quotes in Strings

* In JavaScript, you can escape a quote from considering it as an end of string quote by placing a backslash (\) in front of the quote. var sampleStr = "Alan said, \"Peter is learning JavaScript\"."; This signals to JavaScript that the following quote is not the end of the string, but should instead appear inside the string. So if you were to print this to the console, you would get:

* Alan said, "Peter is learning JavaScript".




### Code:

```Javascript

var myStr = "I am a \"double quoted\" string inside \"double quotes\".";



```

***

#### 140: Quoting strings with single quotes

* String values in JavaScript may be written with single or double quotes, so long as you start and end with the same type of quote. Unlike some languages, single and double quotes are functionally identical in JavaScript.



### Code:

```Javascript

var myStr = '<a href="http://www.example.com" target="_blank">Link</a>';



```

***
