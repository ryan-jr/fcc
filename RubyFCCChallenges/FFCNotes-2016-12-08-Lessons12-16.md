
# FCC Notes Lessons12-16


## 2016-12-08


***

#### 12:  Mutations

*  Return true if the string in the first element of the array contains all of the letters of the string in the second element of the array.  For example, ["hello", "Hello"], should return true because all of the letters in the second string are present in the first, ignoring case.  The arguments ["hello", "hey"] should return false because the string "hello" does not contain a "y".  Lastly, ["Alien", "line"], should return true because all of the letters in "line" are present in "Alien".


### Code: 

```Ruby

def Mutation( arr ) 
  
  # putting each word into their own array and initializing variables
  first = arr[0].downcase.split( "" )
  second = arr[1].downcase.split( "" )
  shorter = 0
  longer = 0
  bool = true 
  
  # branching logic to find the longer of the two arrays, so we don't end up looping through unncessarily
  if first.length >= second.length 
    
    longer = first 
    shorter = second 
    
  else 
    
    shorter = first 
    longer = second
    
  end 
  
  # going through the split array and finding each subsequent letter
  shorter.each do | ltr |
    
    if longer.index( ltr ) 
      
      
    else 
      
      bool = false
      
    end 
    
    
    
  end
  
  return bool
 
  
end 

Mutation(["Alien", "line"])

=begin

# Test Case 1: Mutation( ["hello", "hey"] )
# Expected: False 
# Result: False

# Test Case 2: Mutation(["hello", "Hello"])
# Expected: True 
# Result: True 

# Test Case 3: Mutation(["zyxwvutsrqponmlkjihgfedcba", "qrstu"])
# Expected: True 
# Result: True 

# Test Case 4: Mutation(["Mary", "Army"])
# Expected: True 
# Result: True 

# Test case 5 mutation(["Alien", "line"])
# Expected: True 
# Result: True 


=end


```

***
***

#### 13:  Falsy Bouncer

*  Remove all falsy values from an array.



### Code: 

```Ruby

# because of how ruby handles 'falsy' values differently from JS (nil, false) This challenge can be done as a one liner, because everything else with NaN and undefined, will return a console error

[1, nil, 2].compact.delete_if { | val | val == "" || val == false || val == 0 }

```

***
***

#### 14:  Destroyer

*  You will be provided with an initial array (the first argument in the destroyer function), followed by one or more arguments. Remove all elements from the initial array that are of the same value as these arguments.




### Code: 

```Ruby

def Destroyer( arr, del1, del2 )
  
  # another one liner from ruby, using a helpful method 
  #arr.delete_if { | val | val == del1 || val == del2 }
  
  # we can also do this without using the method, and both work just as well
  
  arr.each do | val |
    
    if val == del1 || val == del2 
      
      arr.delete(val)
      
    end
      
    end
  
  return arr
  
end

Destroyer([2, 3, 2, 3], 2, 3)

=begin 

# Test case 1: Destroyer(["tree", "hamburger", 53], "tree", 53);
# Expected: ["hamburger"]
# Result: ["hamburger"]

# Test case 2: Destroyer([1, 2, 3, 1, 2, 3], 2, 3)
# Expected: [1, 1]
# Result: [1, 1]

# Test case 3: Destroyer([1, 2, 3, 5, 1, 2, 3], 2, 3)
# Expected: [1, 5, 1]
# Result: [1, 5, 1]

# Test case 4 Destroyer([2, 3, 2, 3], 2, 3)
# Expected: []
# Result: []
=end



```

***
***

#### 15: 

* 


### Code: 

```Ruby



```

***
