
# YDKJS


## 2016-11-16


***

#### 1: 



#### 2:  Into JS

* JS has typed values not variables w/ the following built in types: string, number, boolean, null/undefined, object, symbol


* the typeof operator reflects on a value:

```
var a;
typeof a; 	// "undefined"

a = 42;
typeof a;	// "number"

```

* NOTE: a null w/n return null, but instead return 'object', because of a longstanding bug in JS (That likely w/n be fixed)


### Objects

* the object type is a compound value where properties/locations can be set that hold values of any type.  

```

var obj = {
	a: "hello world",
	b: 42,
	c: true
};


/* 

that which is internal to objects can be accessed with either bracket or dot notation, as dot notation is shorter/easier to read it is generally prefered

*/

obj.a;		// "hello world"
obj["a"];	// "hello world"

obj.b;		// 42
obj["b"];	// 42

obj.c;		// true
obj["c"];	// true

```

* Arrays are usually objects/data structures that hold values of any type in numerically indexed positions

```

var arr = [

	"hello",
	42,
	true

];

arr[0];	// "hello"
arr[1];	// 42
arr[2];	// true


```

### functions

* functions are objects/a subtype of objects that can have properties

```

function foo() { 

	return 42;

};

foo.bar = "hello";

typeof foo;		// "function"
typeof foo();		// "number"
typeof foo.bar;		// "string"

```

### Built in Type Methods

* Built in types and subtypes can be extremely useful and helpful for us. 

```

var a = "hello";
var b = 3.14159;

a.length;		// 5 (starts count at 1)
a.toUpperCase();	// "HELLO"
b.tofixed(4);		// "3.1416"

```

### Comparing values

* The result of any comparison (equality/inequality) is a strictly boolean true/false value, regardless of what's being compared

* Coercion is explicit and implict w/ explicit coercion being what is going to clearly result from the code that a conversion of what type to another will occur.  

```
// EXPLICIT CONVERSIION

var a = "42";

var b = Number( a );

a;	// "42"
b;	// 42	<-- The number!


// IMPLICIT CONVERSION

var a = "42";

var b = a * 1;	// "42" implicitly converted 

a;		// "42"
b; 		// 42 <-- The number!

```


* implicit coercion is where a type conversion will happen as a non obvious side effect of some kind of operation

***

* There are 'truthy' and 'falsy' values in JS

* Falsy values: ""(empty string), -0, 0, NaN(Invalid Number), null, undefined, false

* Truthy is anything not on the above list including: "hello", 42, true, [ ], [1, 2, 3, "hello"](arrays), {}, { a: 42 }(objects), functions

* The equality operators are ==, ===, !=, !==.  W/ ! being the equivalent of 'not equal', but remember that != is NOT inequality (<, >, >=,<=).  

* The diff between is == checks for value equality w/ coercion allowed  and === checks for value equality w/o allowing for coercion (strict equality)


```

var a = "42";
var b = 42;

a == b 		// true
a === b 	// false

```



#### 3: 

* 


### Code: 

```Javascript



```

***
