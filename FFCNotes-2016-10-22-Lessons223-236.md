
# FCC Notes Lessons223-236


## 2016-10-22


***

#### 223:  Declare JavaScript Objects as Variables


*  Before we dive into Object Oriented Programming, let's revisit JavaScript objects.


### Code: 

```Javascript


var car = {
  "wheels":4,
  "engines":1,
  "seats":5
};

var motorBike = {

  // Only change code below this line.

  engines: 4,
  wheels: 2,
  seats: 2
  
};


```

***
***

#### 224:  Construct JavaScript Objects with Functions


*  We are also able to create objects using constructor functions.  A constructor function is given a capitalized name to make it clear that it is a constructor.

```
Here's an example of a constructor function:

var Car = function() {
  this.wheels = 4;
  this.engines = 1;
  this.seats = 5;
};
In a constructor the this variable refers to the new object being created by the constructor. So when we write,

  this.wheels = 4;

inside of the constructor we are giving the new object it creates a property called wheels with a value of 4.

You can think of a constructor as a description for the object it will create.

Have your MotorBike constructor describe an object with wheels, engines and seats properties and set them to numbers.
```

### Code: 

```Javascript


var Car = function() {
  this.wheels = 4;
  this.engines = 1;
  this.seats = 5;
};

// Only change code below this line.

var MotorBike = function() {

  this.engines = 4;
  this.wheels = 1;
  this.seats = 1;
  
};



```

***
***

#### 225:  Make Instances of Objects with a Constructor Function


*  Now let's put that great constructor function we made in the last lesson to use!  To use a constructor function we call it with the new keyword in front of it like:  var myCar = new Car();  myCar is now an instance of the Car constructor that looks like the object it described:

* You'll probably want to use var myCar = Car.new; but this would be wrong, instead we have to use myCar = new Car();

```

myCar is now an instance of the Car constructor that looks like the object it described:

{
  wheels: 4,
  engines: 1,
  seats: 5
}
Note that it is important to use the new keyword when calling a constructor. This is how Javascript knows to create a new object and that all the references to this inside the constructor should be referring to this new object.

Now, once the myCar instance is created it can be used like any other object and can have its properties accessed and modified the same way you would usually. For example:

myCar.turboType = "twin";

Our myCar variable now has a property turboType with a value of "twin".

In the editor, use the Car constructor to create a new instance and assign it to myCar.

Then give myCar a nickname property with a string value.

```

### Code:  


```Javascript


var Car = function() {
  this.wheels = 4;
  this.engines = 1;
  this.seats = 5;
};

// Only change code below this line.

var myCar = new Car();
myCar.wheels = 4;
myCar.nickname = "newbie";

console.log(myCar);


```

***
***

#### 226:  Make Unique Objects by Passing Parameters to our Constructor


*  The constructor we have is great, but what if we don't always want to create the same object? To solve this we can add parameters to our constructor.

```

To solve this we can add parameters to our constructor. We do this like the following example:

var Car = function(wheels, seats, engines) {
  this.wheels = wheels;
  this.seats = seats;
  this.engines = engines;
};
Now we can pass in arguments when we call our constructor.

var myCar = new Car(6, 3, 1);

This code will create an object that uses the arguments we passed in and looks like:

{
  wheels: 6,
  seats: 3,
  engines: 1
}
Now give it a try yourself! Alter the Car constructor to use parameters to assign values to the wheels, seats, and engines properties.

Then call your new constructor with three number arguments and assign it to myCar to see it in action.


```


### Code: 

```Javascript


var Car = function(wheels, seats, engines) {
  //Change this constructor
  this.wheels = wheels;
  this.seats = seats;
  this.engines = engines;
};

//Try it out here
var myCar = new Car(6, 1, 20);


```

***
***

#### 227:  Make Object Properties Private


*  Objects have their own attributes, called properties, and their own functions, called methods.   In the previous challenges, we used the this keyword to reference public properties of the current object.  We can also create private properties and private methods, which aren't accessible from outside the object.  To do this, we create the variable inside the constructor using the var keyword we're familiar with, instead of creating it as a property of this.  This is useful for when we need to store information about an object but we want to control how it is used by outside code.  dxFor example, what if we want to store the speed our car is traveling at but we only want outside code to be able to modify it by accelerating or decelerating, so the speed changes in a controlled way?


* Now try it yourself! Modify the Bike constructor to have a private property called gear and two public methods called getGear and setGear to get and set that value.

* Note that in this case 'private property' and variable are used interchangably.  

### Code: 




```Javascript


var Car = function() {
  // this is a private variable
  var speed = 10;

  // these are public methods
  this.accelerate = function(change) {
    speed += change;
  };

  this.decelerate = function() {
    speed -= 5;
  };

  this.getSpeed = function() {
    return speed;
  };
};

var Bike = function() {

  // Only change code below this line.

  var gear = 1;
  
  this.getGear = function(){
    return gear;
  };
  
  this.setGear = function(setting){
    
    gear = setting;
    
  };
  
};

var myCar = new Car();

var myBike = new Bike();


```

***
***

#### 228:  Iterate over Arrays with map


*  The map method is a convenient way to iterate through arrays


```

var oldArray = [1, 2, 3];
var timesFour = oldArray.map(function(val){
  return val * 4;
});
console.log(timesFour); // returns [4, 8, 12]
console.log(oldArray);  // returns [1, 2, 3]
The map method will iterate through every element of the array, creating a new array with values that have been modified by the callback function, and return it. Note that it does not modify the original array.

In our example the callback only uses the value of the array element (the val argument) but your callback can also include arguments for the index and array being acted on.

```
### Code: 

```Javascript


var oldArray = [1,2,3,4,5];

// Only change code below this line.

var newArray = oldArray.map(function( val ) {
                                      
                                      return val + 3;
                                      
                                      });



```

***
***

#### 229:  Condense arrays with reduce


*  The array method reduce is used to iterate through an array and condense it into one value.   To use reduce you pass in a callback whose arguments are an accumulator (in this case, previousVal) and the current value (currentVal).   The accumulator is like a total that reduce keeps track of after each operation. The current value is just the next element in the array you're iterating through.  Reduce has an optional second argument which can be used to set the initial value of the accumulator. If no initial value is specified it will be the first array element and currentVal will start with the second array element.




### Code: 

```Javascript


var array = [4,5,6,7,8];
var singleVal = 0;

// Only change code below this line.

singleVal = array.reduce(function(singleVal, currentVal) {
  
 return singleVal + currentVal; 
  
}, 0);



```

***
***

#### 230: 

* 


### Code: 

```Javascript



```

***
***

#### 231: 

* 


### Code: 

```Javascript



```

***
***

#### 232: 

* 


### Code: 

```Javascript



```

***
***

#### 233: 

* 


### Code: 

```Javascript



```

***
***

#### 234: 

* 


### Code: 

```Javascript



```

***
***

#### 235: 

* 


### Code: 

```Javascript



```

***
