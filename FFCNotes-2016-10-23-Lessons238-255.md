
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

* 


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

#### 240: 

* 


### Code: 

```Javascript



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

#### 243: 

* 


### Code: 

```Javascript



```

***
***

#### 244: 

* 


### Code: 

```Javascript



```

***
***

#### 245: 

* 


### Code: 

```Javascript



```

***
***

#### 246: 

* 


### Code: 

```Javascript



```

***
***

#### 247: 

* 


### Code: 

```Javascript



```

***
***

#### 248: 

* 


### Code: 

```Javascript



```

***
***

#### 249: 

* 


### Code: 

```Javascript



```

***
***

#### 250: 

* 


### Code: 

```Javascript



```

***
***

#### 251: 

* 


### Code: 

```Javascript



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

#### 253: 

* 


### Code: 

```Javascript



```

***
***

#### 254: 

* 


### Code: 

```Javascript



```

***
