# Trying React Alpha Tutorials for a 3rd time


### Lesson 1: Create a simple JSX element

* JSX is a syntax extension of JS which allows you to write HTML directly within JS.  

* To write JS code simply, write the code you want within { } curly braces.  

* JSX IS NOT JS though, keep that in mind because in order for JSX to work it has to be TRANSPILED ( compiled into another language ) into JS, for these challenges we do that with a transpiler called Babel.  


```React
const JSX = <h1>Hello JSX!</h1>;

```


***

### Lesson 2: Create a simple JSX element

* JSX can have multiple nested HTML elements, BUT it needs to return one outer element.  

* We solve this, by wrapping everything we want displayed with a <div> </div>


```React

// write your code here
const JSX = (
<div>
	<h1>Hello JSX!</h1>
	<p>Some info</p>
	<ul>
		<li>An item</li>
		<li>Another item</li>
		<li>A third item</li>
	</ul>
</div>);

```

```
// Issues with Lesson 2:
1.  You use the word component here at the end of the Instructions section, but I don't really have a good context for what 'component' means, nor are any questions resolved with a "we will cover components in future lessons"

***

### Lesson 3:  Add Comments in JSX

* For readability if we need to add comments the JSX syntax for comments is {/* comment goes here */}

```React

const JSX = (
<div>
	<h1>This is a block of JSX</h1>
	{ /* comment! */ }
	<p>Here's a subtitle</p>
</div>);
```

***

### Lesson 4: Render HTML Elements to the DOM

* React allows us to Render HTML elements to the DOM, which we can do by using the method ReactDOM.  

* The ReactDOM method has a syntax we need to follow which is: ReactDOM.render( COMPONENT/ELEMENTTORENDER, WHEREWERENDERTO) 

```React

const JSX = (
<div>
	<h1>Hello World</h1>
	<p>Lets render this to the DOM</p>
</div>
);
// change code below this line
ReactDOM.render(JSX, getElementById('challenge-node'));
```

```
Issues with lesson 4:
1.  There is still no understanding of what a component is or could be, I understand not want to overwhelm students, but brining up terminoligy that someone is uncertain with multiple times stops me and leaves me asking questions before I press on 

2.  This sentence: "select the target DOM node with the getElementById() method on the document object" is confusing.  Just put down document.getElementById().  This is because: A.  I'm thinking that I'm already passing things to the document object with ReactDOM() (Voice in my head as a student: It stands for Document Object Model therefore I must be doing something on the document object) and B: Syntax is easier to repeat correct the first time, when it is seen correctly ( e.g. Do as I do ).  
```


#### Lesson 5: Define an HTML Class in JSX

* JSX differs from HTML in that in JSX we can't use the word class, because class is a reserved keyword in HTML. 

* Instead we use 'className', note the camelCase naming convention that JSX uses for everything.  

```React

const JSX = (
<div className="myDiv">
	<h1>Add a class to this div</h1>
</div>);

```

### Lesson 6: Self closing JSX tags

* JSX also differs from HTML in that JSX uses what is called a 'self closing tag'.  

* In HTML most tags have an opening and closing tag.  E.g. <div> </div> <p> </p> <h1> </h1> etc...

* However, not ALL tags in HTML close.  E.G. <img> <br>, etc...

* In order to compile correctly JSX needs tags to close.  So JSX has it's own syntax that 'self closes' tags.  So tags like <br> can be written as <br /> or <img />.  Even <div> </div> could be written as <div /> (in most cases, more on that later)

```React

const JSX = (
<div>
	{/* change code below this line */}
	<h2>Welcome to React!</h2> <br />
	<p>Be sure to close all tags!</p>
	<hr />
	{/* change code above this line */}
</div>
);

ReactDOM.render(JSX, document.getElementById('challenge-node'));
```

### Lesson 7: Create a stateless functional component

* With React everything is a component

* The first way we create a component is to use a JS function notation

* React requires that our functions be named with Capital letters.  

```React 

const MyComponent = function(props) {
	// change code below this line
return (
  
  <div>Hello </div>
  
  )

	// change code above this line
}
```

### Lesson 8: Create a React component

* There is another way to define a component.  This is with the ES6 notation of class FunctionName extends React.Component { }

```React


class MyComponent extends React.Component {
	constructor(props) {
		super(props);
	}
  render() {
    return (
	    // change code below this line

			<div>
        <h1>Hello React!</h1>
        </div>

	    // change code above this line
    );
  }
};

```

```
// Questions about Lesson 8

1.  As a student questions immediatley come to mind:
A.  Why are there 2 ways to create components? Is one better than the other?
B.  What is ES6? Why does it matter? 
C.  Why is there a render() here? Can't I just use return ( /* code here */) 

```

### Lesson 9: Create a component with Composition

* Using components together is called composition.  You can use multiple components in the render method of another component.  




```
// Questions about Lesson 9:
1.  The following sentence seems imprecise:
"You can use one or more components in the render() method of another one."
the 'another one' seems ambigious in that 'another one' in this instance could refer to another component, or another render method.  

2.  Ok COMPONENT COMPOSITION WAS CONFUSING FOR THE LONGEST TIME.  It was confusing because no one really STRONGLY made the distinction between a Component, and Calling a component.  This is why in JS there is a distinction between a function, and a function call, because both refer to VERY specific operations/uses.  

3.  I really got confused here because in future lessons tags like <MyComponent /> are called components, but to me these are just HTML tags, how can they be components?  There needs to be a STRONG reinforcement that JSX/React basically allows you to create custom HTML tags.  

4.  I'm also REALLY confused why arrow functions are being used here. I've never seen the arrow function before this lesson, and it confuses me/makes me wonder if there is something else going on that i'm missing.  It is refred to as a 'functional component' in the Instructions, as a student I'm wondering if you mean 'functional stateless component'

5.  Also after sitting through about 30 hours of React tutorials I'm still wondering about ParentComponents and Child components, and how they interact.  No tutorial I've found, really seems to drive this point home, or how to distinguish between them.  It seems strange to introduce the concept of parents/children here without FULLY breaking it down/explaining it.  

```

### Lesson 10: use React to Render nested Components


* There are multipel ways to render react components




```
// Issues with lesson 10
1.  It would seem easier to introduce the analogy/concept of nesting components in lesson 9, to make it easier for the student to conceptualize/understand what composition/composing is.  

