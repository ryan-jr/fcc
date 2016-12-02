
# FCC Notes Lessons1-11


## 2016-12-01


***

#### 1: Reverse a String

*  Reverse the provided string.




### Code: 

```Ruby


def reverseString( str )
  
  x = str.reverse()
  
  return x
  
end


# Test Case 1
# reverseString("hello")
# "olleh"


# Test Case 2 
# reverseString("Howdy") 
# Output: "ydwoH"

# Test Case 3
# reverseString("Greetings from Earth")
# Output: "htraE morf sgniteerG"


```

***
***

#### 2: Factorialize a Number 


*  Return the factorial of the provided integer.




### Code: 

```Ruby

def factorialize( num ) 
  
  if ( num === 0 ) 
		
		return 1;
		
else
    
    return num * factorialize( num - 1 );

end

end

# Test Case 1 
# factorialize(5) 
# Output: 120

# Test Case 1 
# factorialize(10)
# Output:   3628800

# Test Case 1 
# factorialize(20) 
# Output: 2432902008176640000

# Test Case 1 
# factorialize(0) 
# Output 1

```

***
***

#### 3: 

* Return true if the given string is a palindrome. Otherwise, return false.




### Code: 

```Ruby

# function to check for palindromes
# given a string, and after stripping 
# all whitespace and special characters

def palindrome ( data )
  
  data = data.downcase.gsub(/[^a-z0-9\s]/i, '')
  data = data.delete( " " )
  x = data.reverse()
  
    puts data
    puts x
    
    
  if x == data 
    

    
    return true 
    
  else
    
    return false 
    
  end
  
  
  
end



# Test case 
# palindrome("eye")
# output: true

# Test case 
# palindrome("_eye")
# output: true

# Test case 
# palindrome("race car")
# output: 

# Test case 

# output: 

# Test case 

# output: 

# Test case 

# output: 



```

***
***

#### 4: Find the Longest Word in a String 


*  Return the length of the longest word in the provided sentence.  




### Code: 

```Javascript

def findLongestWord ( data ) 
  
  wordArr = data.split( " " )
  arr = []
  
  wordArr.each { | wordLen |
    
    arr << wordLen.length()
    
    
  }
  
  
  return arr.max
  
end

# Test case 1 
# findLongestWord("The quick brown fox jumped over the lazy dog");
# Output: 6 


# Test case 2
findLongestWord("May the force be with you");
# Output: 5 

# Test case 3
findLongestWord("Google do a barrel roll");
# Output: 8 

# Test case 4
findLongestWord("What is the average airspeed velocity of an unladen swallow");
# Output: 19


```

***
***

#### 5: Title Case a Sentence

* Return the provided string with the first letter of each word capitalized. Make sure the rest of the word is in lower case.




### Code: 

```Ruby


def titleCase ( data ) 
  
  wordArr = data.split( " " )
  arr = []
  
  wordArr.each { | word |
    
    word = word.downcase
    firstChar = word[0].upcase
    arr << firstChar + word[1..-1]
    
    
    
    
  }
  
  
  return arr.join(" ").to_s
  
end

# Test case 1 
# titleCase("I'm a little tea pot")
# Output: "I'm A Little Tea Pot". 

# Test case 2
# titleCase("sHoRt AnD sToUt")
# Output: "Short And Stout"

# Test case 3
# titleCase("HERE IS MY HANDLE HERE IS MY SPOUT")
# Output: "Here Is My Handle Here Is My Spout"




```

***
***

#### 6: Find the Largest Number in Arrays

*  Return an array consisting of the largest number from each provided sub-array. For simplicity, the provided array will contain exactly 4 sub-arrays.


### Code: 

```Ruby

def largestOfFour ( data ) 
  
  arr = data
  bigArr = []
  
  
  arr.each { | innerArr |
    
    bigArr << innerArr.max
    
    
    
    
  }
  
  
  return bigArr
  
end



# Test case 1 
# largestOfFour([[4, 9, 1, 3], [13, 35, 18, 26], [32, 35, 97, 39], [1000000, 1001, 857, 1]])
# Output: [5, 27, 39, 1001] 

# Test case 2
# largestOfFour([[13, 27, 18, 26], [4, 5, 1, 3], [32, 35, 37, 39], [1000, 1001, 857, 1]])
# Output: [27,5,39,1001]


```

***
***

#### 7:  Confirm the Ending

*  Check if a string (first argument, str) ends with the given target string (second argument, target).





### Code: 

```Ruby

def confirmEnding( str, target ) 
  
 endOfStr = str[ ( -1 * target.length )..-1 ] 
 
 if endOfStr == target 
   
   return true 
   
 else
   
   return false 
   
 end

  
  
end


=begin
# Test case 1 
# confirmEnding("Walking on water and developing software from a specification are easy if both are frozen", "specification")
# Output:false

# Test case 2
# confirmEnding("He has to give me a new name", "name")
# Output: true

# Test case 3
# confirmEnding("Open sesame", "same")
# Output: true

# Test case 4
# confirmEnding("Open sesame", "pen")
# Output:  false

# Test case 5
# confirmEnding("If you want to save our world, you must hurry. We dont know how much longer we can withstand the nothing", "mountain")
# Output: false 





=end



```

***
***

#### 8:  Repeat a string

*  Repeat a given string (first argument) num times (second argument). Return an empty string if num is not a positive number.




### Code: 

```Ruby


def repeatStringNumTimes( str, num ) 
  

num.times do 
  
  print str
  
end
  
  
end


=begin
# Test case 1 
# repeatStringNumTimes("*", 3) 
# Output:"***"

# Test case 2
# repeatStringNumTimes("abc", 3)
# Output: "abcabcabc"

# Test case 3
# repeatStringNumTimes("abc", 4)
# Output: "abcabcabcabc"

# Test case 4
# repeatStringNumTimes("abc", 1)
# Output:  "abc"

# Test case 5
# repeatStringNumTimes("*", 8)
# Output: "********" 

# Test case 5
# repeatStringNumTimes("abc", -2)
# Output: "" 


=end



```

***
***

#### 9: Chunky Monkey

*  Write a function that splits an array (first argument) into groups the length of size (second argument) and returns them as a two-dimensional array.




### Code:  Chunky Munky

```Ruby

def chunkArrayInGroups( arr, num )

x = 0 
y = arr.length/num 

innerArr = []
outerArr = []

while x < y 

innerArr = []
innerArr << arr[ 0..num - 1 ]
arr.slice!( 0..num - 1 )

outerArr << innerArr 

x+=1

end 

return outerArr 
end 


# chunkArrayInGroups(["a", "b", "c", "d"], 2)


```

***
***

#### 10: Slasher

*  Return the remaining elements of an array after chopping off n elements from the head.




### Code: 

```Ruby


def slasher( arr, num )


arr.drop(num)

end 


slasher([1, 2, 3], 2)

```

***
