# Dailyprogrammer challenge 277 
# Finds the most simplified factors of a number, returns the numbers if none found/work 



def factorFinder ( numA, numB ) 
  
  # Intializing variables 
  gcfOfAAndB = 1
  gcf = 1
  ctr = 1

  # Basic checks to get the greater of the 2 numbers   
  if numA > numB 
    
    gcf = numA
    
  else 
    
    gcf = numB
    
  end
  
  # Start the loop to find the GCF if possible 
  while ctr < gcf 
  
    if ( numA % ctr == 0 ) && ( numB % ctr == 0 )
    
      gcfOfAAndB = ctr
      puts ctr 
  
    end
    
     
    ctr += 1 
  
  end 
  
  # Rendering output
  puts " #{ numA / gcfOfAAndB } #{ numB / gcfOfAAndB }"
  
  
end 

# Function call and data 
factorFinder( 4096, 1024 )


=begin 

https://www.reddit.com/r/dailyprogrammer/comments/4uhqdb/20160725_challenge_277_easy_simplifying_fractions/

Explanation: 

A fraction exists of a numerator (top part) and a denominator (bottom part) as you probably all know.
Simplifying (or reducing) fractions means to make the fraction as simple as possible. Meaning that the denominator is a close to 1 as possible. This can be done by dividing the numerator and denominator by their greatest common divisor.
Formal Inputs & Outputs

Input description

You will be given a list with 2 numbers seperator by a space. The first is the numerator, the second the denominator
4 8
1536 78360
51478 5536
46410 119340
7673 4729
4096 1024

=end

=begin 

Test Inputs 

Test 1: factorFinder( 4 , 8 ) 
Output 1: 1, 2 
Status: Passed 

Test 2: factorFinder( 1536 , 78360 ) 
Output 2: 64, 3265 
Status: Passed 

Test 3: factorFinder( 25739, 2768 )
Output3: 25739, 2768
Status: Passed 

Test 4: factorFinder( 46410, 119340 )
Output4: 7, 18
Status: Passed 

Test5: factorFinder( 7673, 4729 )
Output5: 7673, 4729 
Status: Passed 

Test6: factorFinder( 4096, 1024 )
Output6: 4, 1 
Status: Passed

=end 

