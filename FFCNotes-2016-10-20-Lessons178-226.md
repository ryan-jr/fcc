
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

#### 194: 

* 


### Code: 

```Javascript



```

***
***

#### 195: 

* 


### Code: 

```Javascript



```

***
***

#### 196: 

* 


### Code: 

```Javascript



```

***
***

#### 197: 

* 


### Code: 

```Javascript



```

***
***

#### 198: 

* 


### Code: 

```Javascript



```

***
***

#### 199: 

* 


### Code: 

```Javascript



```

***
***

#### 200: 

* 


### Code: 

```Javascript



```

***
***

#### 201: 

* 


### Code: 

```Javascript



```

***
***

#### 202: 

* 


### Code: 

```Javascript



```

***
***

#### 203: 

* 


### Code: 

```Javascript



```

***
***

#### 204: 

* 


### Code: 

```Javascript



```

***
***

#### 205: 

* 


### Code: 

```Javascript



```

***
***

#### 206: 

* 


### Code: 

```Javascript



```

***
***

#### 207: 

* 


### Code: 

```Javascript



```

***
***

#### 208: 

* 


### Code: 

```Javascript



```

***
***

#### 209: 

* 


### Code: 

```Javascript



```

***
***

#### 210: 

* 


### Code: 

```Javascript



```

***
***

#### 211: 

* 


### Code: 

```Javascript



```

***
***

#### 212: 

* 


### Code: 

```Javascript



```

***
***

#### 213: 

* 


### Code: 

```Javascript



```

***
***

#### 214: 

* 


### Code: 

```Javascript



```

***
***

#### 215: 

* 


### Code: 

```Javascript



```

***
***

#### 216: 

* 


### Code: 

```Javascript



```

***
***

#### 217: 

* 


### Code: 

```Javascript



```

***
***

#### 218: 

* 


### Code: 

```Javascript



```

***
***

#### 219: 

* 


### Code: 

```Javascript



```

***
***

#### 220: 

* 


### Code: 

```Javascript



```

***
***

#### 221: 

* 


### Code: 

```Javascript



```

***
***

#### 222: 

* 


### Code: 

```Javascript



```

***
***

#### 223: 

* 


### Code: 

```Javascript



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
