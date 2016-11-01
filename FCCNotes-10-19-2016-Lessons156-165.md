# FCC Notes Lessons 156 - 166

## 10/19/2016

***

***

####  156: Nest one Array within Another Array

* You can also nest arrays within other arrays, like this: [["Bulls", 23], ["White Sox", 45]]. This is also called a Multi-dimensional Array.

                              
### Code:

```Javascript

// Example
var ourArray = [["the universe", 42], ["everything", 101010]];

// Only change code below this line.
var myArray = [["2", "3"], ["Hello", "World"]];


```

***


####  157: Access Array Data with Indexes


* Access array data using indicies.  Array indexes are written in the same bracket notation that strings use, except that instead of specifying a character, they are specifying an entry in the array. Like strings, arrays use zero-based indexing, so the first element in an array is element 0.


### Code:

```Javascript

// Example
var ourArray = [1,2,3];
var ourData = ourArray[0]; // equals 1

// Setup
var myArray = [1,2,3];

// Only change code below this line.
var myData = myArray[0];

```

***



####  158: Modify Array Data with Indexes


*  Unlike strings, the entries of arrays are mutable and can be changed freely. For example: var ourArray = [3,2,1];   ourArray[0] = 1; // equals [1,2,1]


### Code:

```Javascript


// Example
var ourArray = [1,2,3];
ourArray[1] = 3; // ourArray now equals [1,3,3].

// Setup
var myArray = [1,2,3];

// Only change code below this line.
myArray[0] = 3;

```

***


####  159: Access MultiDimensional Arrays With Indexes



*  One way to think of a multi-dimensional array, is as an array of arrays. When you use brackets to access your array, the first set of brackets refers to the entries in the outer-most (the first level) array, and each additional pair of brackets refers to the next level of entries inside.


### Code:

```Javascript


// Setup
var myArray = [[1,2,3], [4,5,6], [7,8,9], [[10,11,12], 13, 14]];

// Only change code below this line.
var myData = myArray[2][1];
```

***



####  160: Manipulate Arrays with Push



*  An easy way to append data to the end of an array is via the push() function.  .push() takes one or more parameters and "pushes" them onto the end of the array. var arr = [1,2,3]; arr.push(4);// arr is now [1,2,3,4]


### Code:

```Javascript


// Example
var ourArray = ["Stimpson", "J", "cat"];
ourArray.push(["happy", "joy"]); 
// ourArray now equals ["Stimpson", "J", "cat", ["happy", "joy"]]

// Setup
var myArray = [["John", 23], ["cat", 2]];

// Only change code below this line.


myArray.push(["dog", 3]);
```

***

####  161: Manipulate Arrays with Pop



*  .pop() is used to "pop" a value off of the end of an array. We can store this "popped off" value by assigning it to a variable, including numbers, strings, and nested arrays.  


### Code:

```Javascript


// Example
var ourArray = [1,2,3];
var removedFromOurArray = ourArray.pop(); 
// removedFromOurArray now equals 3, and ourArray now equals [1,2]

// Setup
var myArray = [["John", 23], ["cat", 2]];

// Only change code below this line.
var removedFromMyArray = myArray.pop();

```

***

####  161: Manipulate Arrays with Shift



*   .shift()  works just like .pop(), except it removes the first element instead of the last. 


### Code:

```Javascript



// Example
var ourArray = ["Stimpson", "J", ["cat"]];
removedFromOurArray = ourArray.shift();
// removedFromOurArray now equals "Stimpson" and ourArray now equals ["J", ["cat"]].

// Setup
var myArray = [["John", 23], ["dog", 3]];

// Only change code below this line.
var removedFromMyArray = myArray.shift();


```

***

####  162: Manipulate Arrays with Unshift



*   Not only can you shift elements off of the beginning of an array, you can also unshift elements to the beginning of an array i.e. add elements in front of the array.  .unshift() works exactly like .push(), but instead of adding the element at the end of the array, unshift() adds the element at the beginning of the array.

### Code:

```Javascript


// Example
var ourArray = ["Stimpson", "J", "cat"];
ourArray.shift(); // ourArray now equals ["J", "cat"]
ourArray.unshift("Happy"); 
// ourArray now equals ["Happy", "J", "cat"]

// Setup
var myArray = [["John", 23], ["dog", 3]];
myArray.shift();

// Only change code below this line.

myArray.unshift(["Paul", 35]);



```

***

####  162: Manipulate Arrays with Unshift



*   Create a shopping list in the variable myList. The list should be a multi-dimensional array containing several sub-arrays.  The first element in each sub-array should contain a string with the name of the item. The second element should be a number representing the quantity

### Code:

```Javascript


var myList = [
              ["dog", 22], 
              ["cat", 22], 
              ["rat", 22], 
              ["bat", 22], 
              ["bog", 22], 
                     
             ];

```

***

####  163: Write Reusable JavaScript with Functions

*   In JavaScript, we can divide up our code into reusable parts called functions.  For example

```
function functionName() {
  console.log("Hello World");
}

//You can call or invoke this function by using its name followed by parentheses, like //this:

functionName();

```


### Code:

```Javascript



// Example
function ourReusableFunction() {
  console.log("Heyya, World");
}

ourReusableFunction();

// Only change code below this line

function reusableFunction() {
  
  console.log("Hi World");
  
}

reusableFunction();


```

***


####  164: Passing Values to Functions with Arguments


*    Parameters are variables that act as placeholders for the values that are to be input to a function when it is called. When a function is defined, it is typically defined along with one or more parameters. The actual values that are input (or "passed") into a function when it is called are known as arguments.


```

//Here is a function with two parameters, param1 and param2:

function testFun(param1, param2) {
  console.log(param1, param2);
}
Then we can call testFun:

testFun("Hello", "World");

/* 
We have passed two arguments, "Hello" and "World". Inside the function, param1 will equal "Hello" and param2 will equal "World". Note that you could call testFun again with different arguments and the parameters would take on the value of the new arguments. 
*/



```

### Code:

```Javascript

// Example
function ourFunctionWithArgs(a, b) {
  console.log(a - b);
}
ourFunctionWithArgs(10, 5); // Outputs 5

// Only change code below this line.

function functionWithArgs( x, y ) {
  
  console.log( x + y );
  
}

functionWithArgs();
```

***

####  165: Global Scope/Functions

*   In JavaScript, scope refers to the visibility of variables. Variables which are defined outside of a function block have Global scope. This means, they can be seen everywhere in your JavaScript code.  Variables which are used without the var keyword are automatically created in the global scope. This can create unintended consequences elsewhere in your code or when running a function again. You should always declare your variables with var.


### Code:

```Javascript


// Declare your variable here
var myGlobal = 10;

function fun1() {
  // Assign 5 to oopsGlobal Here
  oopsGlobal = 5;
}

// Only change code above this line
function fun2() {
  var output = "";
  if (typeof myGlobal != "undefined") {
    output += "myGlobal: " + myGlobal;
  }
  if (typeof oopsGlobal != "undefined") {
    output += " oopsGlobal: " + oopsGlobal;
  }
  console.log(output);
}


```

***