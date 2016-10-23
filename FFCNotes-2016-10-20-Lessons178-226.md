
# FCC Notes Lessons178-226


## 2016-10-20


***

#### 178:  Comparison with the Strict Inequality Operator


*  The strict inequality operator (!==) is the opposite of the strict equality operator. It means "Strictly Not Equal" and returns false where strict equality would return true and vice versa. Strict inequality will not convert data types.  E.g. 3 !== 3   // false, 3 !== '3' // true, 4 !== 3   // true


### Code: 

```Javascript


// Setup
function testStrictNotEqual(val) {
  // Only Change Code Below this Line
  
  if (val !== 17 ) {

  // Only Change Code Above this Line

    return "Not Equal";
  }
  return "Equal";
}

// Change this value to test
testStrictNotEqual(10);


```

***
***

#### 179:  Comparison with the Greater Than Operator


*  The greater than operator (>) compares the values of two numbers. If the number to the left is greater than the number to the right, it returns true. Otherwise, it returns false.  E.g.  5 > 3   // true,  7 > '3' // true


### Code: 

```Javascript


function testGreaterThan(val) {
  if ( val > 100 ) {  // Change this line
    return "Over 100";
  }
  
  if ( val > 10 ) {  // Change this line
    return "Over 10";
  }

  return "10 or Under";
}

// Change this value to test
testGreaterThan(10);


```

***
***

#### 180:  Comparison with the Greater Than Or Equal To Operator


*  The greater than or equal to operator (>=) compares the values of two numbers. If the number to the left is greater than or equal to the number to the right, it returns true. Otherwise, it returns false.  Like the equality operator, greater than or equal to operator will convert data types while comparing.  E.g.  6  >=  6  // true,  7  >= '3' // true


### Code: 

```Javascript


function testGreaterOrEqual(val) {
  if ( val>= 20 ) {  // Change this line
    return "20 or Over";
  }
  
  if ( val>= 10 ) {  // Change this line
    return "10 or Over";
  }

  return "9 or Under";
}

// Change this value to test
testGreaterOrEqual(10);


```

***
***

#### 181:  Comparison with the Less Than Operator

*  The less than operator (<) compares the values of two numbers. If the number to the left is less than the number to the right, it returns true. Otherwise, it returns false. Like the equality operator, less than operator converts data types while comparing.  


### Code: 

```Javascript


function testLessThan(val) {
  if ( val < 25 ) {  // Change this line
    return "Under 25";
  }
  
  if ( val < 55 ) {  // Change this line
    return "Under 55";
  }

  return "55 or Over";
}

// Change this value to test
testLessThan(10);


```

***
***

#### 182:   Comparison with the Less Than Or Equal To Operator


*   The less than or equal to operator (<=) compares the values of two numbers. If the number to the left is less than or equal the number to the right, it returns true. If the number on the left is greater than the number on the right, it returns false. Like the equality operator, less than or equal to converts data types.


### Code: 

```Javascript


function testLessOrEqual(val) {
  if ( val <= 12 ) {  // Change this line
    return "Smaller Than or Equal to 12";
  }
  
  if ( val <= 24 ) {  // Change this line
    return "Smaller Than or Equal to 24";
  }

  return "25 or More";
}

// Change this value to test
testLessOrEqual(10);



```

***
***

#### 183:  Comparisons with the Logical And Operator


*  Sometimes you will need to test more than one thing at a time. The logical and operator (&&) returns true if and only if the operands to the left and right of it are true.




### Code: 

```Javascript


function testLogicalAnd(val) {
  // Only change code below this line

  if ( val <= 50 && val >= 25 ) {
      
    return "Yes";
    
  }

  // Only change code above this line
  return "No";
}

// Change this value to test
testLogicalAnd(10);


```

***
***

#### 184:  Comparisons with the Logical Or Operator

*  The logical or operator (||) returns true if either of the operands is true. Otherwise, it returns false.


### Code: 

```Javascript



function testLogicalOr(val) {
  // Only change code below this line

  if ( val < 10 || val > 20 ) {
   
    return "Outside";
    
  }

  // Only change code above this line
  return "Inside";
}

// Change this value to test
testLogicalOr(15);


```

***
***

#### 185:  Introducing Else Statements


*  When a condition for an if statement is true, the block of code following it is executed. What about when that condition is false? Normally nothing would happen. With an else statement, an alternate block of code can be executed.

```
// example code

if (num > 10) {
  return "Bigger than 10";
} else {
  return "10 or Less";
}

```


### Code: 

```Javascript


function testElse(val) {
  var result = "";
  // Only change code below this line
  
  if (val > 5) {
    result = "Bigger than 5";
  } else {
    result = "5 or Smaller";
  }
  
  // Only change code above this line
  return result;
}

// Change this value to test
testElse(4);



```

***
***

#### 186:  Introducing Else If Statements


*  If you have multiple conditions that need to be addressed, you can chain if statements together with else if statements.

```

// example code

if (num > 15) {
  return "Bigger than 15";
} else if (num < 5) {
  return "Smaller than 5";
} else {
  return "Between 5 and 15";
}

```




### Code: 

```Javascript


function testElseIf(val) {
  if (val > 10) {
    return "Greater than 10";
  } else if (val < 5) {
    return "Smaller than 5";
  } else { 
  return "Between 5 and 10";
   }
}

// Change this value to test
testElseIf(7);



```

***
***

#### 187:  Logical Order in If Else Statements


*  Order is important in if, else if statements.  The loop is executed from top to bottom so you will want to be careful of what statement comes first.


### Code: 

```Javascript


function orderMyLogic(val) {
  
  if (val < 5) {
    return "Less than 5";
  } else if (val < 10) {
    return "Less than 10";
  } else {
    return "Greater than or equal to 10";
  }
}

// Change this value to test
orderMyLogic(7);



```

***
***

#### 188:  Chaining If Else Statements


*  if/else statements can be chained together for complex logic. Here is pseudocode of multiple chained if / else if statements:

### Code: 

```Javascript


function testSize(num) {
  // Only change code below this line
  
  if ( num < 5 ) {
    
    return "Tiny";
    
  } else if ( num < 10 ) { 
    
    return "Small";
    
  } else if ( num < 15 ) {
    
    return "Medium";
    
  } else if ( num < 20 ) {
    
    return "Large";
    
  } else if ( num >= 20 ) {
    
    return "Huge";
    
  } else {
    
    return "Change Me";
    
  }  
  // Only change code above this line
}

// Change this value to test
testSize(7);


```

***
***



#### 189:  Golf Code


*  In the game of golf each hole has a par meaning the average number of strokes a golfer is expected to make in order to sink the ball in a hole to complete the play. Depending on how far above or below par your strokes are, there is a different nickname.  Your function will be passed par and strokes arguments. Return the correct string according to this table which lists the strokes in order of priority; top (highest) to bottom (lowest):


### Code: 

```Javascript



function golfScore(par, strokes) {
  // Only change code below this line
  
  if ( strokes == 1 ) {
    
    return "Hole-in-one!";
    
  } else if ( strokes <= par - 2 ) { 
  
    return "Eagle";
  
  } else if ( par - 1 == strokes ) {
    
    return "Birdie";
    
  } else if ( par == strokes ) {
    
    return "Par";
    
  } else if ( par + 1 == strokes ) {
    
    return "Bogey";
    
  } else if ( par + 2 == strokes ) {
    
    return "Double Bogey";
    
  } else {
    
    return "Go Home!";
    
  }
  
  //return "Change Me";
  // Only change code above this line
}

// Change these values to test
golfScore(5, 4);


```

***
***

#### 190:  Selecting from many options with Switch Statements

*  If you have many options to choose from, use a switch statement. A switch statement tests a value and can have many case statements which defines various possible values. Statements are executed from the first matched case value until a break is encountered.


### Code: 

```Javascript


function caseInSwitch(val) {
  var answer = "";
  // Only change code below this line
  switch (val) { 
  
    case 1:
      answer = "alpha";
      break;
  
    case 2:
     answer = "beta";
     break;
  
    case 3:
      answer = "gamma";
      break;
      
    case 4:
      answer = "delta";
      break;
    
  
  }
  
  
  // Only change code above this line  
  return answer;  
}

// Change this value to test
caseInSwitch(1);



```

***
***

#### 191:   Adding a default option in Switch statements

*  In a switch statement you may not be able to specify all possible values as case statements. Instead, you can add the default statement which will be executed if no matching case statements are found. Think of it like the final else statement in an if/else chain.




### Code: 

```Javascript


function switchOfStuff(val) {
  var answer = "";
  // Only change code below this line
  
    switch (val) { 
  
    case "a":
      answer = "apple";
      break;
        
    case "b":
      answer = "bird";
      break; 
        
    case "c":
      answer = "cat";
      break;  
        
    default:
      answer = "stuff";   
      break;
    }
        
  // Only change code above this line  
  return answer;  
}

// Change this value to test
switchOfStuff(1);



```

***
***

#### 192:  Multiple Identical Options in Switch Statements


*  If the break statement is omitted from a switch statement's case, the following case statement(s) are executed until a break is encountered. If you have multiple inputs with the same output, you can represent them in a switch statement like this:



### Code: 

```Javascript


function sequentialSizes(val) {
  var answer = "";
  // Only change code below this line
  switch (val) {
    case 1:
    case 2:
    case 3:
      answer = "Low";
      break;
    
    case 4:
    case 5:
    case 6:
      answer = "Mid";
      break;
      
    case 7:
    case 8:
    case 9:
      answer = "High";
      break;
      
      
      
  }
  
  
  // Only change code above this line  
  return answer;  
}

// Change this value to test
sequentialSizes(1);



```

***
***

#### 193:  Replacing If Else Chains with Switch


*  If you have many options to choose from, a switch statement can be easier to write than many chained if/else if statements. 


### Code: 

```Javascript


function chainToSwitch(val) {
  var answer = "";
  // Only change code below this line

  switch (val) {
  
    case "bob":
      answer = "Marley";
      break;
    case 42:
      answer = "The Answer";
      break;
    case 1:
      answer = "There is no #1";
      break;
    case 99:
      answer = "Missed me by this much!";
       break;
    case 7:
      answer = "Ate Nine";
      break;
    case "John":
      answer = "";
      break;
    case 156:
      answer = "";
      break;
  
  }
  
  // Only change code above this line  
  return answer;  
}

// Change this value to test
chainToSwitch(7);



```

***
***

#### 194:  Returning Boolean Values from Functions


*  You may recall from Comparison with the Equality Operator that all comparison operators return a boolean true or false value.  A common anti-pattern is to use an if/else statement to do a comparison and then return true/false:






### Code: 

```Javascript


function isLess(a, b) {
  // Fix this code
  return a <= b; 
}

// Change these values to test
isLess(10, 15);


```

***
***

#### 195:  Return Early Pattern for Functions


*  When a return statement is reached, the execution of the current function stops and control returns to the calling location.




### Code: 

```Javascript


// Setup
function abTest(a, b) {
  // Only change code below this line
  
  if ( a == -2 && b == 2) {
    return undefined;
    
    
  } else if ( a == 2 && b == -2 ){
    
    return undefined;
        
  }
  
  // Only change code above this line

  return Math.round(Math.pow(Math.sqrt(a) + Math.sqrt(b), 2));
}

// Change values below to test your code
abTest(2,2);


```

***
***

#### 196:  Counting Cards


*  In the casino game Blackjack, a player can gain an advantage over the house by keeping track of the relative number of high and low cards remaining in the deck. This is called Card Counting.  Having more high cards remaining in the deck favors the player. Each card is assigned a value according to the table below. When the count is positive, the player should bet high. When the count is zero or negative, the player should bet low.


```


Count    Change Cards
+1	2, 3, 4, 5, 6
0	7, 8, 9
-1	10, 'J', 'Q', 'K', 'A'


```



### Code: 

```Javascript


var count = 0;


function cc(card) {
  // Only change code below this line
  
switch(card){
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
      count++;
      break;
    case 10:
    case "J":
    case "Q":
    case "K":
    case "A":
      count--;
      break;
  }
  if (count > 0){
    return count + " Bet";
  } else {
    return count + " Hold";
  }
  // Only change code above this line
}


// Add/remove calls to test your function.
// Note: Only the last will display
cc(7); cc(8); cc(9);



```

***
***

#### 197:  Build JavaScript Objects


*  You may have heard the term object before.  Objects are similar to arrays, except that instead of using indexes to access and modify their data, you access the data in objects through what are called properties.  Objects are useful for storing data in a structured way, and can represent real world objects, like a cat.



```

Here's a sample object:

var cat = {
  "name": "Whiskers",
  "legs": 4,
  "tails": 1,
  "enemies": ["Water", "Dogs"]
};

```

### Code: 

```Javascript



// Example
var ourDog = {
  "name": "Camper",
  "legs": 4,
  "tails": 1,
  "friends": ["everything!"]
};

// Only change code below this line.

var myDog = {
  
  name: "Dog",
  legs: 5,
  tails: 3,
  friends: ["A", "B", "C"]
  
  
};


```

***
***

#### 198:  Accessing Objects Properties with the Dot Operator


*  There are two ways to access the properties of an object: the dot operator (.) and bracket notation ([]), similar to an array.  The dot operator is what you use when you know the name of the property you're trying to access ahead of time.  Here is a sample of using the dot operator (.) to read an object property:


```

var myObj = {
  prop1: "val1",
  prop2: "val2"
};
var prop1val = myObj.prop1; // val1
var prop2val = myObj.prop2; // val2

```

### Code: 

```Javascript


// Setup
var testObj = {
  "hat": "ballcap",
  "shirt": "jersey",
  "shoes": "cleats"
};

// Only change code below this line

var hatValue = testObj.hat;      // Change this line
var shirtValue = testObj.shirt;    // Change this line



```

***
***

#### 199:  Accessing Objects Properties with Bracket Notation


*  The second way to access the properties of an object is bracket notation ([]). If the property of the object you are trying to access has a space in it, you will need to use bracket notation.  

```
// Here is a sample of using bracket notation to read an object property:

var myObj = {
  "Space Name": "Kirk",
  "More Space": "Spock"
};
myObj["Space Name"]; // Kirk
myObj['More Space']; // Spock

// Note that property names with spaces in them must be in quotes (single or double).


```

### Code: 

```Javascript


// Setup
var testObj = {
  "an entree": "hamburger",
  "my side": "veggies",
  "the drink": "water"
};

// Only change code below this line

var entreeValue = testObj["an entree"];   // Change this line
var drinkValue = testObj["the drink"];    // Change this line


```

***
***

#### 200:  Accessing Objects Properties with Variables


*  Another use of bracket notation on objects is to use a variable to access a property. This can be very useful for iterating through lists of the object properties or for doing the lookup.

```

Here is an example of using a variable to access a property:

var someProp = "propName";
var myObj = {
  propName: "Some Value"
}
myObj[someProp]; // "Some Value"

```


### Code: 

```Javascript


// Setup
var testObj = {
  12: "Namath",
  16: "Montana",
  19: "Unitas"
};

// Only change code below this line;

var playerNumber = 16;       // Change this Line
var player = testObj[playerNumber];   // Change this Line


```

***
***

#### 201:  Updating Object Properties


*  After you've created a JavaScript object, you can update its properties at any time just like you would update any other variable. You can use either dot or bracket notation to update.

```

For example, let's look at ourDog:

var ourDog = {
  "name": "Camper",
  "legs": 4,
  "tails": 1,
  "friends": ["everything!"]
};
// Since he's a particularly happy dog, let's change his name to "Happy Camper".    // Here's how we update his object's name property:

// ourDog.name = "Happy Camper"; or

// ourDog["name"] = "Happy Camper";

// Now when we evaluate ourDog.name, instead of getting "Camper", we'll get his    //new name, "Happy Camper".

```

### Code: 

```Javascript


// Example
var ourDog = {
  "name": "Camper",
  "legs": 4,
  "tails": 1,
  "friends": ["everything!"]
};

ourDog.name = "Happy Camper";

// Setup
var myDog = {
  "name": "Coder",
  "legs": 4,
  "tails": 1,
  "friends": ["Free Code Camp Campers"]
};

// Only change code below this line.

myDog.name = "Happy Coder";


```

***
***

#### 202:  Add New Properties to a JavaScript Object


*  You can add new properties to existing JavaScript objects the same way you would modify them.  Here's how we would add a "bark" property to ourDog:  ourDog.bark = "bow-wow";  or  ourDog["bark"] = "bow-wow";

### Code: 

```Javascript


// Example
var ourDog = {
  "name": "Camper",
  "legs": 4,
  "tails": 1,
  "friends": ["everything!"]
};

ourDog.bark = "bow-wow";

// Setup
var myDog = {
  "name": "Happy Coder",
  "legs": 4,
  "tails": 1,
  "friends": ["Free Code Camp Campers"]
};

// Only change code below this line.

myDog.bark = "woof";

```

***
***

#### 203:  Delete Properties from a JavaScript Object


*   We can also delete properties from objects like this: delete ourDog.bark;

### Code: 

```Javascript


// Example
var ourDog = {
  "name": "Camper",
  "legs": 4,
  "tails": 1,
  "friends": ["everything!"],
  "bark": "bow-wow"
};

delete ourDog.bark;

// Setup
var myDog = {
  "name": "Happy Coder",
  "legs": 4,
  "tails": 1,
  "friends": ["Free Code Camp Campers"],
  "bark": "woof"
};

// Only change code below this line.

delete myDog.tails;



```

***
***

#### 204:  Using Objects for Lookups


*  Objects can be thought of as a key/value storage, like a dictionary. If you have tabular data, you can use an object to "lookup" values rather than a switch statement or an if/else chain. This is most useful when you know that your input data is limited to a certain range.




### Code: 

```Javascript


// Setup
function phoneticLookup(val) {
  var result = "";
  var value = val;

  // Only change code below this line
  
   var lookup = {
    
    "alpha":    "Adams" ,
    "bravo":    "Boston",
    "charlie": "Chicago",
    "delta":    "Denver",
    "echo":     "Easy"  ,
    "foxtrot":  "Frank" 
    
  };

  // Only change code above this line
  return lookup[value];
}

// Change this value to test
phoneticLookup("");


```

***
***

#### 205:  Testing Objects for Properties


*  Sometimes it is useful to check if the property of a given object exists or not. We can use the .hasOwnProperty(propname) method of objects to determine if that object has the given property name. .hasOwnProperty() returns true or false if the property is found or not.

```
var myObj = {
  top: "hat",
  bottom: "pants"
};
myObj.hasOwnProperty("top");    // true
myObj.hasOwnProperty("middle"); // false
```

*  https://www.reddit.com/r/FreeCodeCamp/comments/40du4z/stuck_on_waypoint_testing_objects_for_properties/

### Code: 

```Javascript


// Setup
var myObj = {
  gift: "pony",
  pet: "kitten",
  bed: "sleigh"
};

function checkObj(checkProp) {  
  if (myObj.hasOwnProperty(checkProp)) { return myObj[checkProp]; } else if (myObj.hasOwnProperty(checkProp)) { return myObj[checkProp];
} else { return "Not Found"; } }
// Test your code by 
checkObj("pet");


```

***
***

#### 206:  Manipulating Complex Objects


*  Sometimes you may want to store data in a flexible Data Structure. A JavaScript object is one way to handle flexible data. They allow for arbitrary combinations of strings, numbers, booleans, arrays, functions, and objects.


* Add a new album to the myMusic array. Add artist and title strings, release_year number, and a formats array of strings.


* the problem I had with this one is I wanted to push an entirely new record onto the array myMusic with myMusic.push(newRecord), with newRecord being an entirely new array/object.  


### Code: ,

```Javascript


var myMusic = [
  {
    "artist": "Billy Joel",
    "title": "Piano Man",
    "release_year": 1973,
    "formats": [ 
      "CS", 
      "8T", 
      "LP" ],
    "gold": true
  
  },

  {
    artist: "Daft Punk",
    "title": "Homework",
    "release_year": 1997,
    "formats": [ 
      "CD", 
      "Cassette", 
      "LP" ],
    "gold": true
  }
];






```

***
***

#### 207:  Accessing Nested Objects


*  The sub-properties of objects can be accessed by chaining together the dot or bracket notation.


* We can use dot or bracket notation, but we need to specify down to what level we are going here we go car -> inside -> glove box

### Code: 

```Javascript


// Setup
var myStorage = {
  "car": {
    "inside": {
      "glove box": "maps",
      "passenger seat": "crumbs"
     },
    "outside": {
      "trunk": "jack"
    }
  }
};

// Only change code below this line

var gloveBoxContents = myStorage.car.inside["glove box"]; // Change this line



```

***
***

#### 208:  Accessing Nested Arrays


*  As we have seen in earlier examples, objects can contain both nested objects and nested arrays. Similar to accessing nested objects, Array bracket notation can be chained to access nested arrays.




### Code: 

```Javascript



```

***
***

#### 209: 

*  As we have seen in earlier examples, objects can contain both nested objects and nested arrays. Similar to accessing nested objects, Array bracket notation can be chained to access nested arrays.




### Code: 

```Javascript


// Setup
var myPlants = [
  { 
    type: "flowers",
    list: [
      "rose",
      "tulip",
      "dandelion"
    ]
  },
  {
    type: "trees",
    list: [
      "fir",
      "pine",
      "birch"
    ]
  }  
];

// Only change code below this line

var secondTree = myPlants[1].list[1]; // Change this line



```

***
***

#### 210:  Record Collection


*  You are given a JSON object representing a part of your musical album collection. Each album has several properties and a unique id number as its key. Not all albums have complete information.  

* Write a function which takes an album's id (like 2548), a property prop (like "artist" or "tracks"), and a value (like "Addicted to Love") to modify the data in this collection.

* If prop isn't "tracks" and value isn't empty (""), update or set the value for that record album's property.


* There are several rules for handling incomplete data:  If prop is "tracks" but the album doesn't have a "tracks" property, create an empty array before adding the new value to the album's corresponding property.  If prop is "tracks" and value isn't empty (""), push the value onto the end of the album's existing tracks array.  If value is empty (""), delete the given prop property from the album.

### Code: 

```Javascript



```

***
***

#### 211:  
// Example
var ourArray = [];

for (var i = 0; i < 5; i++) {
  ourArray.push(i);
}

// Setup
var myArray = [];

// Only change code below this line.




*  The most common type of JavaScript loop is called a "for loop" because it runs "for" a specific number of times.


```

For loops are declared with three optional expressions separated by semicolons:

for ([initialization]; [condition]; [final-expression])

The initialization statement is executed one time only before the loop starts. It is typically used to define and setup your loop variable.

The condition statement is evaluated at the beginning of every loop iteration and will continue as long as it evaluates to true. When condition is false at the start of the iteration, the loop will stop executing. This means if condition starts as false, your loop will never execute.

The final-expression is executed at the end of each loop iteration, prior to the next condition check and is usually used to increment or decrement your loop counter.

In the following example we initialize with i = 0 and iterate while our condition i < 5 is true. We'll increment i by 1 in each loop iteration with i++ as our final-expression.

var ourArray = [];
for (var i = 0; i < 5; i++) {
  ourArray.push(i);
}
ourArray will now contain [0,1,2,3,4].

```



### Code: 

```Javascript


// Example
var ourArray = [];

for (var i = 0; i < 5; i++) {
  ourArray.push(i);
}

// Setup
var myArray = [];

// Only change code below this line.

for (var i = 1; i < 6; i++){
  myArray.push(i);
}



```

***
***

#### 212: 

*  For loops don't have to iterate one at a time. By changing our final-expression, we can count by even numbers.


```
We'll start at i = 0 and loop while i < 10. We'll increment i by 2 each loop with i += 2.

var ourArray = [];
for (var i = 0; i < 10; i += 2) {
  ourArray.push(i);
}
ourArray will now contain [0,2,4,6,8].
```

### Code: 

```Javascript

// Example
var ourArray = [];

for (var i = 0; i < 10; i += 2) {
  ourArray.push(i);
}

// Setup
var myArray = [];

// Only change code below this line.

for (var i = 1; i < 11; i += 2){
  myArray.push(i);
  
}



```

***
***

#### 213:  Count Backwards With a For Loop


*  A for loop can also count backwards, so long as we can define the right conditions.  In order to count backwards by twos, we'll need to change our initialization, condition, and final-expression.  We'll start at i = 10 and loop while i > 0. We'll decrement i by 2 each loop with i -= 2.


```
var ourArray = [];
for (var i=10; i > 0; i-=2) {
  ourArray.push(i);
}

```


### Code: 

```Javascript


// Example
var ourArray = [];

for (var i = 10; i > 0; i -= 2) {
  ourArray.push(i);
}

// Setup
var myArray = [];

// Only change code below this line.
for ( var i = 11; i >= 1; i -= 2 ) {
  
  myArray.push(i);
  
}

myArray.shift();



```

***
***

#### 214:  Iterate Through an Array with a For Loop


*  A common task in JavaScript is to iterate through the contents of an array. One way to do that is with a for loop. This code will output each element of the array arr to the console:

```
var arr = [10,9,8,7,6];
for (var i=0; i < arr.length; i++) {
   console.log(arr[i]);
}

```

* Remember that Arrays have zero-based numbering, which means the last index of the array is length - 1. Our condition for this loop is i < arr.length, which stops when i is at length - 1.



### Code: 

```Javascript


// Example
var ourArr = [ 9, 10, 11, 12];
var ourTotal = 0;

for (var i = 0; i < ourArr.length; i++) {
  ourTotal += ourArr[i];
}

// Setup
var myArr = [ 2, 3, 4, 5, 6];

// Only change code below this line

var total = 0;

for ( var i = 0; i < myArr.length; i++) {
  
  total += myArr[i];
  
}
  



```

***
***

#### 215:  Nesting For Loops

*   If you have a multi-dimensional array, you can use the same logic as the prior waypoint to loop through both the array and any sub-arrays. Here is an example:

```

var arr = [
  [1,2], [3,4], [5,6]
];
for (var i=0; i < arr.length; i++) {
  for (var j=0; j < arr[i].length; j++) {
    console.log(arr[i][j]);
  }
}

//  This outputs each sub-element in arr one at a time. Note that for the inner loop, we are checking the .length of arr[i], since arr[i] is itself an array.

```




### Code: 

```Javascript


function multiplyAll(arr) {
  var product = 1;
  // Only change code below this line

for ( var i = 0; i < arr.length; i++ ) {
  for ( var j = 0;j < arr[i].length; j++ ){
    product *= arr[i][j];
    
  }
  // Only change code above this line
  
}
  return product;
}

// Modify values below to test your code
multiplyAll([[1,2],[3,4],[5,6,7]]);



```

* The biggest challenges I had with this were getting the product correct, and getting the return in the correct position.  

***
***

#### 216:  Iterate with JavaScript While Loops



*  You can run the same code multiple times by using a loop.  Another type of JavaScript loop is called a "while loop", because it runs "while" a specified condition is true and stops once that condition is no longer true

```

var ourArray = [];
var i = 0;
while(i < 5) {
  ourArray.push(i);
  i++;
}

```


### Code: 

```Javascript


// Setup
var myArray = [];

// Only change code below this line.

var i = 0;
while ( i < 5 ) {
  
  myArray.push(i);
  i++;  
  
}



```

***
***

#### 217:  Generate Random Fractions with JavaScript


*  Random numbers are useful for creating random behavior.  JavaScript has a Math.random() function that generates a random decimal number between 0 (inclusive) and not quite up to 1 (exclusive). Thus Math.random() can return a 0 but never quite return a 1


### Code: 

```Javascript


function randomFraction() {

  // Only change code below this line.

   
  return Math.random();

  // Only change code above this line.
}


```

***
***

#### 218: 

*   It's great that we can generate random decimal numbers, but it's even more useful if we use it to generate random whole numbers.  Use Math.random() to generate a random decimal.  Multiply that random decimal by 20.  Use another function, Math.floor() to round the number down to its nearest whole number.
Remember that Math.random() can never quite return a 1 and, because we're rounding down, it's impossible to actually get 20. This technique will give us a whole number between 0 and 19.  Putting everything together, this is what our code looks like:

```
Math.floor(Math.random() * 20);
```

### Code: 

```Javascript


var randomNumberBetween0and19 = Math.floor(Math.random() * 20);

function randomWholeNum() {

  // Only change code below this line.

  return Math.floor(Math.random() * 10);
}


```

***
***

#### 219:  Generate Random Whole Numbers within a Range

*  Instead of generating a random number between zero and a given number like we did before, we can generate a random number that falls within a range of two specific numbers.





### Code: 

```Javascript


// Example
function ourRandomRange(ourMin, ourMax) {

  return Math.floor(Math.random() * (ourMax - ourMin + 1)) + ourMin;
}

ourRandomRange(1, 9);

// Only change code below this line.

function randomRange(myMin, myMax) {

  return Math.floor(Math.random() * (myMax - myMin + 1)) + myMin; // Change this line

}

// Change these values to test your function
var myRandom = randomRange(5, 15);


```

***
***

#### 220:  Sift through Text with Regular Expressions


*  Regular expressions are used to find certain words or patterns inside of strings.  For example, if we wanted to find the word the in the string The dog chased the cat, we could use the following regular expression: /the/gi   Let's break this down a bit:  / is the start of the regular expression.  the is the pattern we want to match.  / is the end of the regular expression.  g means global, which causes the pattern to return all matches in the string, not just the first one.  i means that we want to ignore the case (uppercase or lowercase) when searching for the pattern.


### Code: 

```Javascript


// Setup
var testString = "Ada Lovelace and Charles Babbage designed the first computer and the software that would have run on it.";

// Example
var expressionToGetSoftware = /software/gi;
var softwareCount = testString.match(expressionToGetSoftware).length;
  

// Only change code below this line.

var expression = /and/gi;  // Change this Line
    
// Only change code above this line

// This code counts the matches of expression in testString
var andCount = testString.match(expression).length;



```

***
***

#### 221:  Find Numbers with Regular Expressions


*  We can use special selectors in Regular Expressions to select a particular type of value.  One such selector is the digit selector \d which is used to retrieve one digit (e.g. numbers 0 to 9) in a string.  In JavaScript, it is used like this: /\d/g.  Appending a plus sign (+) after the selector, e.g. /\d+/g, allows this regular expression to match one or more digits.  The trailing g is short for 'global', which allows this regular expression to find all matches rather than stop at the first match.


### Code: 

```Javascript


// Setup
var testString = "There are 3 cats but 4 dogs.";

// Only change code below this line.

var expression = /\d+/g;  // Change this line

// Only change code above this line

// This code counts the matches of expression in testString
var digitCount = testString.match(expression).length;


```

***
***

#### 222:  Find Whitespace with Regular Expressions


*  We can also use regular expression selectors like \s to find whitespace in a string.  The whitespace characters are " " (space), \r (the carriage return), \n (newline), \t (tab), and \f (the form feed).   The whitespace regular expression looks like this:  /\s+/g


### Code: 

```Javascript

// Setup
var testString = "How many spaces are there in this sentence?";

// Only change code below this line.

var expression = /\s+/g;  // Change this line
// Only change code above this line

// This code counts the matches of expression in testString
var spaceCount = testString.match(expression).length;



```

***
***

#### 223:  Invert Regular Expression Matches with JavaScript


*  You can invert any match by using the uppercase version of the regular expression selector.  For example, \s will match any whitespace, and \S will match anything that isn't whitespace.


### Code: 

```Javascript


// Setup
var testString = "How many non-space characters are there in this sentence?";

// Only change code below this line.

var expression = /\S/g;  // Change this line

// Only change code above this line

// This code counts the matches of expression in testString
var nonSpaceCount = testString.match(expression).length;


```

***
***

#### 224: 

* 


### Code: 

```Javascript



```

***
***

#### 225: 

* 


### Code: 

```Javascript



```

***
