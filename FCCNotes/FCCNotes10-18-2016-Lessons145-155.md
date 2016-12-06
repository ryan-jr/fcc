# FCC Notes Lessons 145 - 155

## 10/18/2016

***

***

####  145: Concatenating Strings with the Plus Equals Operator

* += can be used to concatenate strings onto the end of an existing string variable, which can help break up lines of text.  


### Code:

```Javascript


// Example
var ourStr = "I come first. ";
ourStr += "I come second.";

// Only change code below this line

var myStr = "This is the first sentence. ";
myStr += "This is the second sentence.";


```

***


####  146: Concatenating Strings with the Plus Equals Operator

* += can be used to concatenate strings onto the end of an existing string variable, which can help break up lines of text.  


### Code:

```Javascript


// Example
var ourStr = "I come first. ";
ourStr += "I come second.";

// Only change code below this line

var myStr = "This is the first sentence. ";
myStr += "This is the second sentence.";


```

***

####  147: Appending Variables to strings

* We can also append variables to a string using +=


### Code:

```Javascript


// Example
var anAdjective = "awesome!";
var ourStr = "Free Code Camp is ";
ourStr += anAdjective;

// Only change code below this line

var someAdjective = "lots of hard/fun work!";
var myStr = "Learning to code is ";
myStr += someAdjective;



```

***


####  147: Finding the length of a string

* We can find the lenght of a string by using the .lenght method after the string variable or the string literal e.g. "Jon".length // 3 or var name = "jon" name.length


### Code:

```Javascript


// Example
var firstNameLength = 0;
var firstName = "Ada";

firstNameLength = firstName.length;

// Setup
var lastNameLength = 0;
var lastName = "Lovelace";

// Only change code below this line.

lastNameLength = lastName.length;

```

***

####  148: Use bracket noataion to find the first character in a string

* Bracket notation is a way to get a specific index in a string, for instance var firstName = "Bob"; with this you can get the first character with firstName[0]


### Code:

```Javascript
// Example
var firstLetterOfFirstName = "";
var firstName = "Ada";

firstLetterOfFirstName = firstName[0];

// Setup
var firstLetterOfLastName = "";
var lastName = "Lovelace";

// Only change code below this line
firstLetterOfLastName = lastName[0];


```

***

####  149: Understanding String Immutability

* String Values in JS are immutable, meaning they cannot be altered, this does not mean that variables that hold strings cannot be altered, just that  individual parts of strings cannot be altered e.g. var stringHere = "String" ; CANNOT be altered with stringHere[0] = "Z";

* The only way to change it would be var = stringHere = "String"; stringHere = "Ztring";



### Code:

```Javascript

// Setup
var myStr = "Jello World";

// Only change code below this line

myStr = "Hello World"; 




```

***

####  151: Use Bracket Notation to Find the Nth Character in a string

*  We can use bracket notation to find other characters in a string as well, we just have to remember that computers start counting at 0.



### Code:

```Javascript


// Example
var firstName = "Ada";
var secondLetterOfFirstName = firstName[1];

// Setup
var lastName = "Lovelace";

// Only change code below this line.
var thirdLetterOfLastName = lastName[2];


```

***

####  152: Use Bracket Notation to Find the Last Character in a string

*  We can subtract 1 from the strings length to get the last character of a string, through using something like: firstName[firstName.length - 1]



### Code:

```Javascript


// Example
var firstName = "Ada";
var lastLetterOfFirstName = firstName[firstName.length - 1];

// Setup
var lastName = "Lovelace";

// Only change code below this line.
var lastLetterOfLastName = lastName[lastName.length - 1];

```
***


####  153: Use Bracket Notation to Find the Nth to last character in a string

*  We can subtract 3 from the strings length to get the 3rd to last character of a string, through using something like: firstName[firstName.length - 3]



### Code:

```Javascript


// Example
var firstName = "Ada";
var thirdToLastLetterOfFirstName = firstName[firstName.length - 3];

// Setup
var lastName = "Lovelace";

// Only change code below this line
var secondToLastLetterOfLastName = lastName[lastName.length - 2];

```
***


####  154: Word Blanks

*  We will now use our knowledge of strings to build a "Mad Libs" style word game we're calling "Word Blanks". You will create an (optionally humorous) "Fill in the Blanks" style sentence.  You will need to use string operators to build a new string, result, using the provided variables: myNoun, myAdjective, myVerb, and myAdverb.  You will also need to use additional strings, which will not change, and must be in between all of the provided words. The output should be a complete sentence.



### Code:

```Javascript

function wordBlanks(myNoun, myAdjective, myVerb, myAdverb) {
  var result = "";
  // Your code below this line
  result = "The " + myNoun + " was " + myAdjective + " and " + myVerb + " very " + myAdverb;

  // Your code above this line
  return result;
}

// Change the words here to test your function
wordBlanks("dog", "big", "ran", "quickly");


```
***

####  155: Store Multiple Values in one variable using JS arrays

*  With JS arrays we can store several pieces of data in one place like so:   var sandwich = ["peanut butter", "jelly", "bread"]




### Code:

```Javascript

// Example
var ourArray = ["John", 23];

// Only change code below this line.
var myArray = ["Joe", 1];


```
***



