
# FCC Notes Algorithim Challenges 238-255


## 2016-10-23


***

#### 238:  Reverse a String


*  Reverse the provided string.  You may need to turn the string into an array before you can reverse it.  Your result must be a string.


### Code: 

```Javascript


function reverseString( str ){
  
  var array = [];  // Creates the empty array
  array = str.split("");  
  array = array.reverse();  // reverses the contents of the array
  str = array.join(""); // puts everything back together
  
  
  return str;
}

reverseString("hello");


```

***
***

#### 239:  Factorialize a number

*   Return the factorial of the provided integer.  If the integer is represented with the letter n, a factorial is the product of all positive integers less than or equal to n.


### Code: 

```Javascript


function factorialize(num) {
  
  if ( num === 0 ) { 
		
		return 1;
		
  } 
    
    return num * factorialize( num - 1 );
// doing stuff recursively, because why not?

}




```

***
***

#### 240: Check for Palindromes

*  Return true if the given string is a palindrome. Otherwise, return false. You'll need to remove all non-alphanumeric characters (punctuation, spaces and symbols) and turn everything lower case in order to check for palindromes.






### Code: 

```Javascript


// a function to check to see if a 
// given string is a palindrome after 
// removing all non alphanumeric  
// characters 

function palindrome(str) {

  // setting up the variables to make 
  // everything the same case and replace
  // and non alphnumeric characters
  str = str.toLowerCase();
  str = str.replace( /[^A-Za-z0-9]/g, "" );
  
  // one liner to reverse the string 
  // and put it in a variable to check
  strReverse = str.split("").reverse().join("");
  
  // the branching logic to check if 
  // the given string is a palindrome
  // or not 
  if( str == strReverse ) {
  	
  	
  	console.log( str, strReverse );
  	return true;
  	
  	
  } else {
  	
  return false;
  	
  }
  
  
  return str;
}


// helpful links:

//  https://medium .freecodecamp.com/how-to-reverse-a-string-in-javascript-in-3-different-ways-75e4763c68cb#.k0fmdraa5

// http://stackoverflow.com/questions/20864893/javascript-replace-all-non-alpha-numeric-characters-new-lines-and-multiple-whi


```

***
***

#### 241:  Find the longest word in a string

*  Given a string find the longest word


### Code: 

```Javascript


// a function to find the longest word in a string

function findLongestWord(str) {
	
	// initializing the variables 
	var arr = []; 
	count = 0;
	var longest = 0;
	
	// splitting the string into individual words
	arr = str.split(" ");
	
	
	// checking the length of each word, and putting the longest longest
	// one into the longest variable 
	while( count < arr.length ){
		if ( arr[count].length >= longest ){
			longest = arr[ count ].length;
			
			count ++;
		} else {
			count ++;
		}
		
		
		
	}
	
  return longest;
}

findLongestWord("The quick brown fox jumped over the lazy dog");

```

***
***

#### 242:  Title Case a Sentence


*  Return the provided string with the first letter of each word capitalized. Make sure the rest of the word is in lower case.


### Code: 

```Javascript

// A function to titlecase all the words in a string
function titleCase(str) {

  
  	// initializing the variables 
	var arr = []; 
	count = 0;
	
	
	// splitting the string into individual words and lowercasing them
	arr = str.toLowerCase().split(" ");
	
	
	// getting each inital letter from each word and capitalizing it
	// then combining it with the rest of the string and putting it back into
    // the array
	while( count < arr.length ){
      
      arr[count] = arr[ count ][0].toUpperCase() + arr[count].slice(1);
 
		count ++;
		
	}
  
  // putting humpty dumpty back together
  arr = arr.join(" ");
  return arr;
}

titleCase("I'm a little tea pot");
titleCase("HERE IS MY HANDLE HERE IS MY SPOUT");


```

***
***

#### 243:  Find the largest number in arrays

*   Return an array consisting of the largest number from each provided sub-array. For simplicity, the provided array will contain exactly 4 sub-arrays.



### Code: 

```Javascript
// We can't use sort because sort goes by strings
// not numbers

// function to find the largest number in an array

function largestOfFour(arr) {
	
  // initializing variables 
  var newArr = [];
  x = 0;
  
  // looping through each array and calling Math.max and apply on it 
  // Math.max finds the largest value 
  // apply passes an argument and an array to Math.max and then assigns it to x 
  // https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Funct/apply
  // we finnally push x onto the newArr 
  
  for( var i = 0; i < arr.length; i++ ){
  	
  x = Math.max.apply(null, arr[i]);
  newArr.push(x);
  	
  	
  }
  
  
  return newArr;
}

largestOfFour([[4, 5, 1, 3], [13, 27, 18, 26], [32, 35, 37, 39], [1000, 1001, 857, 1]]);


```

***
***

#### 244:  Confirm the ending 

*  Check if a string (first argument, str) ends with the given target string (second argument, target).  This challenge can be solved with the .endsWith() method, which was introduced in ES2015. But for the purpose of this challenge, we would like you to use one of the JavaScript substring methods instead.




### Code: 

```Javascript


function confirmEnding(str, target) {
 // get the length of the target 
 // set the target to measure the end of the given String
 // if they match then it's all good
 
 // setting up the  neccessary variables
 targetLen = target.length;

 // this variable is key to this function because it gets the 
 // ending portion of the string's length, the next section 
 // compares the target string and the target
 tarStr = str.substring( str.length - targetLen );
 

  if( tarStr === target ){
  	
	return true;
	
} else {
	
	return false;
	
}


  //return str;
}

confirmEnding("Walking on water and developing software from a specification are easy if both are frozen", "specification");


```

***
***

#### 245:  Repeat a string Repeat a string 

*  Repeat the string given a string and a number of times to repeat it


### Code: 

```Javascript

// a function to repeat a given string a 
// given number of times 

function repeatStringNumTimes( str, num ) {
  
  
  // checks to see that num is larger than
  // 0, and assigns the neccessary string
  // to str 
  if( num >= 0 ){
  	
  str = str.repeat( num );
  
  } else {
  	
  	str ="";
  	
  }
  return str;
}

repeatStringNumTimes("abc", -2);


// helpful info: 
// http://stackoverflow.com/questions/1877475/repeat-character-n-times


```

***
***

#### 246:   Truncate a string

*  Truncate a string (first argument) if it is longer than the given maximum string length (second argument). Return the truncated string with a ... ending.  Note that inserting the three dots to the end will add to the string length.   However, if the given maximum string length num is less than or equal to 3, then the addition of the three dots does not add to the string length in determining the truncated string.


### Code: 

```Javascript

// a function to truncate a string 
// given a string and a number 

function truncateString(str, num) {
   
   
   // setting up the branching logic 
   // to check the string length 
   // and return the desired output 
   if( num >= str.length ){
   	
   	return str;
   	
   } else if( num <= 3) {
   	
	slicedStr = str.slice( 0, num );
	return slicedStr + "...";
 
   } else {
   	
   	slicedStr = str.slice( 0, num - 3 );
   	return slicedStr + "...";
   	
   }
}

truncateString("A-tisket a-tasket A green and yellow basket", 11);



```

***
***

#### 247:  Chunky Monkey 


*  Write a function that splits an array (first argument) into groups the length of size (second argument) and returns them as a two-dimensional array.




### Code: 

```Javascript

// a function to return a nested array 
// given an original array a new array 
// length 

function chunkArrayInGroups(arr, size) {
  
  // initializing variables
  var newArr = [];
  var holdingArr = [];
 
  // iterating over the array
  for( var i = 0; i < arr.length; i += size){
  	
  	// this line makes the magic happen 
  	// by ensuring that we change to the 
  	// correct position each time 
  	// and slice the correct elements
  	// while putting them in the temp var
  	holdingArr = arr.slice( i, i + size );
  	newArr.push( holdingArr );
  	
  	
  }
  
  
  return newArr;
}

chunkArrayInGroups([0, 1, 2, 3, 4, 5, 6, 7, 8], 2);



```

***
***

#### 248:  Slasher Flick

*  Return the remaining elements of an array after chopping off n elements from the head.  The head means the beginning of the array, or the zeroth index.


### Code: 

```Javascript

// a function to remove howMany(an integer)
// items from the given array arr 
// and return the left over items 

function slasher(arr, howMany) {
	
  // since splice modifies the original array, we
  // can pretty much do this as a one liner  
  // starting at the index, and removing howMany items
	arr.splice( 0, howMany );

    return arr;
}

// helpful info: http://www.w3schools.com/jsref/jsref_splice.asp 



slasher([1, 2, "chicken", 3, "potatoes", "cheese", 4], 5);


```

***
***

#### 249: 

*  Return true if the string in the first element of the array contains all of the letters of the string in the second element of the array. For example, ["hello", "Hello"], should return true because all of the letters in the second string are present in the first, ignoring case.




### Code: 

```Javascript


// a function to down/lower case all 
// string elements of an array 

function mutation( arr ) {
	
	var str = "";
	
	for( var i = 0; i < arr.length; i++ ){
		
		arr[i] = arr[i].toLowerCase();

	}
	
	str     = arr[0];
	nextStr = arr[1];
	
	for( var x = 0; x < nextStr.length; x++ ){
		
		if ( str.indexOf(nextStr[x]) ===  -1){
			
			return false;
			
		} else {
			
			continue;
			
		}
		
		
		
	}
	
  return true;
}

mutation(["hello", "hey"]);



// if index at can't find it, just return false

// else return true 




```

***

#### 251:  Falsy Bouncer

*  Remove all falsy values from an array.  Falsy values in JavaScript are false, null, 0, "", undefined, and NaN.

* The frustrating thing with this one is you can't use if/else statments to remove parts of the array because NaN will give you an error as per:  https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/isNaN

### Code: 

```Javascript

function bouncer(arr) {
	
  arr = arr.filter(Boolean)
  
  return arr;
}

bouncer([7, "ate", "", false, 9]);



```

***
***

#### 252:  Seek and Destroy

*  You will be provided with an initial array (the first argument in the destroyer function), followed by one or more arguments. Remove all elements from the initial array that are of the same value as these arguments.




### Code: 

```Javascript


function filterer(arr, num){
	arr = arr.filter(function(val){
		
		return val !== num;
		
	});
	
	return arr;
}

function destroyer(arr) {
  // Remove all the values
  var count = 1; 
  var oldArr = arr;
  var newArr = [];
  var len = arguments.length;
  
  
  while( count < len ){
  	
  	oldArr = (filterer(oldArr, arguments[count]));
  	count += 1;
  	
  }

return oldArr;
} 

destroyer(["tree", "hamburger", 53], "tree", 53);


```

***
***

#### 253:   Where do I belong


*  Return the lowest index at which a value (second argument) should be inserted into an array (first argument) once it has been sorted. The returned value should be a number.  getIndexToIns([20,3,5], 19) should return 2 because once the array has been sorted it will look like [3,5,20] and 19 is less than 20 (index 2) and greater than 5 (index 1).




### Code: 

```Javascript

// function to filter all non standard
// values from an array (Nan, undefined,
// etc..)
      
function bouncer( arr ){
	
	filteredArr = arr.filter( Boolean );
	return filteredArr;
	
}

// function to get the maximum number 
// in an array 

function getMaxOfArray( numArr ) {
	
	maxNum = Math.max.apply( null, numArr );
	return maxNum;
	
}

// function to insert a number into an array and return
// the index of where that number would be inserted 
// into a sorted array 

function getIndexToIns( arr, num ) {
  
  // intializing variables
  arrLen = arr.length;
  newArr = [];
  x = 0;
  arr.push(num);
  
  // the for loop starts at -1 
  // as another way to iterate through 
  // the full array 
  // we assign temporary variables x,y 
  // as neccessary and call the needed 
  // functions on the variables 
  // and put the maximum number from 
  // the old array into the new array 
  // and clean up the old array 
  for( i = -1; i < arrLen; i++ ){
  x = getMaxOfArray( arr );
  y = arr.indexOf( x );
 
  delete arr[ y ];
  newArr.unshift( x );
  arr = bouncer( arr );
  
  
  }
  
  
  return newArr.indexOf( num );
  
}


// helpful links:

//  http://stackoverflow.com/questions/31925323/how-to-filter-out-nan-null-0-false-in-an-array-js

//  http://stackoverflow.com/questions/500606/deleting-array-elements-in-javascript-delete-vs-splice

//  https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/unshift

// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Math/max




```

***
***

#### 254:  Ceaser's Cipher

*  One of the simplest and most widely known ciphers is a Caesar cipher, also known as a shift cipher. In a shift cipher the meanings of the letters are shifted by some set amount.  A common modern use is the ROT13 cipher, where the values of the letters are shifted by 13 places. Thus 'A' ↔ 'N', 'B' ↔ 'O' and so on.  Write a function which takes a ROT13 encoded string as input and returns a decoded string.  All letters will be uppercase. Do not transform any non-alphabetic character (i.e. spaces, punctuation), but do pass them on.


### Code: 

```Javascript


// This function needs to iterate through all the values
// get the correct char codes for each value

function rot13(str) { // LBH QVQ VG!
  
	// declaring the array variable to be pushed to
	var newStr = [];
  
  	// setting up the loop to iterate over the string
	for( var i = 0; i < str.length; i++ ) {
  		
  		// getting the character code of the character in string 
		var z = str.charCodeAt( i );
  	
  		// dealing with the punctuation and whitespace cases 
  		if( z == 46 || z == 33 || z == 32 || z == 63 ) {
  		
  		
  			newStr.push( String.fromCharCode( z ) );
  		
  		// dealing with normal cases of characters at or beyond the letter N
  		} else if ( str.charCodeAt( i ) >= 78 ) {
  		
  			newStr.push( String.fromCharCode( z - 13 ) );
  		
  		// dealing with cases that preceed the letter N
  		} else {
  		
  		
			var x = ( str.charCodeAt( i ) - 65 );
			var y = 78 + x;
			newStr.push( String.fromCharCode( y ) );
  		
  		}
  		
  	}

// putting everything back together
return newStr.join( "" );
}


```

***
