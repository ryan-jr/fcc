
# FCC Notes Lessons166-176


## 2016-10-19


***

#### 166: Local Scope and Functions


*  Variables which are declared within a function, as well as the function parameters have local scope. That means, they are only visible within that function.



### Code: 

```Javascript


function myLocalScope() {
  'use strict';
  
  var myVar = "Hello";
  console.log(myVar);
}
myLocalScope();

// Run and check the console
// myVar is not defined outside of myLocalScope




```

***
***

#### 167:  Global vs Local Scope in Functions


*  It is possible to have both local and global variables with the same name. When you do this, the local variable takes precedence over the global variable.


```
var someVar = "Hat";
function myFun() {
  var someVar = "Head";
  return someVar;
}
//The function myFun will return "Head" because the local version of the variable is present.


```

### Code: 

```Javascript


// Setup
var outerWear = "T-Shirt";

function myOutfit() {
  // Only change code below this line
  
  var innerWear = "sweater";
  return innerWear;
  
  // Only change code above this line
  return outerWear;
}

myOutfit();


```

***
***

#### 168:  Return a Value from a Function with Return


* We can pass values into a function with arguments. You can use a return statement to send a value back out of a function.



### Code: 

```Javascript



// Example
function minusSeven(num) {
  return num - 7;
}

// Only change code below this line

function timesFive( x ) {
  
  return x * 5;
  
}



```

***
***

#### 169:  Assignment with a Returned Value


* If you'll recall from our discussion of Storing Values with the Assignment Operator, everything to the right of the equal sign is resolved before the value is assigned. This means we can take the return value of a function and assign it to a variable.  Assume we have pre-defined a function sum which adds two numbers together, then:  ourSum = sum(5, 12);  will call sum function, which returns a value of 17 and assigns it to ourSum variable.


### Code: 

```Javascript


// Example
var changed = 0;

function change(num) {
  return (num + 5) / 3;
}

changed = change(10);

// Setup
var processed = 0;

function processArg(num) {
  return (num + 3) / 5;
}

// Only change code below this line

processed = processArg(7);


```

***
***

#### 170: Stand in Line


* In Computer Science a queue is an abstract Data Structure where items are kept in order. New items can be added at the back of the queue and old items are taken off from the front of the queue.

* This code can seem a little confusing because it's having you do multiple things at once: 1.  push an item into the array  2.  shift an item out of the array  3.  return the item you shifted out of the array.  


### Code: 

```Javascript


function nextInLine(arr, item) {
  // Your code here
  
  arr.push(item);
  
  var x = arr.shift();
  
  return x;  // Change this line
}

// Test Setup
var testArr = [1,2,3,4,5];

// Display Code
console.log("Before: " + JSON.stringify(testArr));
console.log(nextInLine(testArr, 6)); // Modify this line to test
console.log("After: " + JSON.stringify(testArr));


```

***
***

#### 171: Understanding Boolean Values


* Another data type is the Boolean. Booleans may only be one of two values: true or false. They are basically little on-off switches, where true is "on" and false is "off." These two states are mutually exclusive.




### Code: 

```Javascript


function welcomeToBooleans() {

// Only change code below this line.

return true; // Change this line

// Only change code above this line.
}



```

***
***

#### 172:  Use Conditional Logic with If Statements


*  If statements are used to make decisions in code. The keyword if tells JavaScript to execute the code in the curly braces under certain conditions, defined in the parentheses. These conditions are known as Boolean conditions because they may only be true or false.  When the condition evaluates to true, the program executes the statement inside the curly braces. When the Boolean condition evaluates to false, the statement inside the curly braces will not execute.


```
// Example Code

function test (myCondition) {
  if (myCondition) {
     return "It was true";
  }
  return "It was false";
}
test(true);  // returns "It was true"
test(false); // returns "It was false"

```


### Code: 

```Javascript

// Example

function ourTrueOrFalse(isItTrue) {
  if (isItTrue) { 
    return "Yes, it's true";
  }
  return "No, it's false";
}

// Setup
function trueOrFalse(wasThatTrue) {

  if(wasThatTrue){
    return "Yes, that was true";    
    
  }
  return "No, that was false";
  
  
  // Only change code above this line.

}

// Change this value to test
trueOrFalse(true);



```

***
***

#### 173:  Comparison with the Equality Operator


*  The most basic operator is the equality operator ==. The equality operator compares two values and returns true if they're equivalent or false if they are not. Note that equality is different from assignment (=), which assigns the value at the right of the operator to a variable in the left.  There are many Comparison Operators in JavaScript. All of these operators return a boolean true or false value.  




### Code: 

```Javascript


// Setup
function testEqual(val) {
  if (val == 12) {      // Change this line
    return "Equal";
  }
  return "Not Equal";
}

// Change this value to test
testEqual(10);


```

***
***

#### 174:  Comparison with the Strict Equality Operator


* Strict equality (===) is the counterpart to the equality operator (==). Unlike the equality operator, strict equality tests both the data type and value of the compared elements.  e.g. 3 === 3 // true, but 3 === "3" // false.  




### Code: 

```Javascript


// Setup
function testStrict(val) {
  if ( val === 7) { // Change this line
    return "Equal";
  }
  return "Not Equal";
}

// Change this value to test
testStrict(10);


```

***
***

#### 175:  Comparison with the Inequality Operator


*  The inequality operator (!=) is the opposite of the equality operator. It means "Not Equal" and returns false where equality would return true and vice versa. Like the equality operator, the inequality operator will convert data types of values while comparing.




### Code: 

```Javascript


// Setup
function testNotEqual(val) {
  if ( val != 99 ) { // Change this line
    return "Not Equal";
  }
  return "Equal";
}

// Change this value to test
testNotEqual(10);


```

***
