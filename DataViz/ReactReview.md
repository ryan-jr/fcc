# Learning React


# Lesson 1: Creating a JSX Element

* React is an open source view library.  This means that it ONLY controls what someone sees on the page/DOM/UI.  

* React uses a syntax extension of Javascript called JSX which lets us use JS inside HTML.  

* One of the main differences is that any code that you want treated as JS should be included in curly braces, for example: { 2 + 2 }

* Since JSX is NOT JS it has to be compiled into JS via a transpiler, in our case this transpiler is Babel.  


```React

const JSX = <h1>Hello JSX</h1>;

```


### Lesson 2: Create a complex JSX element

* For me it's easiest to think of JSX as HTML with special properties/abilities.  

* JSX needs to have ONE outer element in order to transpile correctly:

```
const ValidJSX = (
<div>
	<h1> Hello World </h1>
</div>

)

const InvalidJSX = (

<br>
<h1> Hey There </h1>


)

```

* JSX needs to have tags that match at the beginning/end in order to compile correctly.  

* You may also wonder why we wrapped everything in parens this time around, this is because it allows us to render multiple elments rather than just 1 element at a time.  

```React
// write your code here
const JSX = (
  
  <div> 
    <h1> </h1>
    <p> </p>
    <ul> 
      <li> </li>
      <li> </li>
      <li> </li>
    </ul>
    </div>
  )
  
  ```
  
  
  Lesson 3: Add comments in JSX
  
  * JSX has it's own way of writing comments.  {/* comment */}
  
  ```React
  {/* comment here */}
  const JSX = (
<div> 
	<h1>This is a block of JSX</h1>
	<p>Here's a subtitle</p>
</div>);
```
  
### Lesson 4: Render HTML Elements to the DOM 

* React allows you to render JSX as HTML to the DOM via the rendering API ReactDOM.  

* We render React elements to the DOM with the line (Outside of functions/classes): ReactDOM.render(componentToRender, targetNode);

* The above might seem confusing because we haven't discussed components yet, but we'll get there shortly, the targetNode is usually a class or id that you have created in your HTML file that you choose the React code to append to 

&&& This line:

```
select the target DOM node with the getElementById() method on the document object.
```

is very confusing, especially for first timers.  There should probably be a short example or a link here, something more than ReactDOM.render(componentToRender, targetNode), because I as a user don't really know what a component is at this point OR really what a targetNode is, I would understand it if it was phrased as 'targetElement', but right now Node sounds weird and confusing, and the instructions don't provide a lot of guidance on this front.  


### Lesson 5: Define an HTML class in JSX 

* JSX likely seem the same up to this point, but in JSX you can't use the word class since it is a reserved JS keyword.  Instead we use className.  

* Also, the naming conventions in JSX are all in camelCase such as className, onClick, etc...


```React

const JSX = (
<div className="myDiv">
	<h1>Add a class to this div</h1>
</div>);


```
  
### Self Closing JSX tags 

* Another way that JSX differs from HTML is with self closing tags.  

* Since almost all tags in HTML have an opening and a closing tag, it's fairly easy to use them in JSX.  However some tags are known as self closing tags, for instance <br>, <img>, etc... 

* The above point is an issue for JSX since the opening and closing tags have to match.  To get around this issue JSX uses self closing tags in a slightly different way such as <img />, <br />, etc... You could even do <div /> if you wanted

```React 


const JSX = (
<div>
	{/* change code below this line */}
	<p>Welcome to React!</p> <br />
	<img src="https://goo.gl/ErGBQs" alt="React Logo" />
	{/* change code above this line */}
</div>
);

ReactDOM.render(JSX, document.getElementById('challenge-node'));

```

### Lesson 7: Create a stateless functional component 

* Components are a VERY key part of React

&&& I'm left wondering what a React component is at this point, even the Facebook docs, don't do a good job of explaining what components are: 


```

Components let you split the UI into independent, reusable pieces, and think about each piece in isolation. Conceptually, components are like JavaScript functions. They accept arbitrary inputs (called "props") and return React elements describing what should appear on the screen.


```

&&& The above leaves me with more questions, from the above explanation is that it says that components return React elements.  The first question I have is, 'what are React elements, are they like JSX elements?'.  I understand that it's facebook documentation, and not yours, but those are potential questions a student might have to keep in mind.  

* There are TWO ways to create components.  The one we are learning about here is the Stateless Functional Component.  

* It's stateless because it does not manage or track changes to the state/status of data, but only recieves and renders data (Think variables that are only displayed, never updated).  

* It's functional, because we write it like we would a JS function, with some minor differences.  

* To create a component via a function we write a JS function that returns either JSX or null.  

* You should also note that JSX requires that function names start with a capital letter.  

&&& At some point you should review const and what it does as a refresher/quick blurb, because I'm wondering if I need const in order to declare a JSX function, or if it is somehow key to creating a component.  

&&& Also the example code here seems confusing/contradictory because I thought I had to use {/* comment */} to make comments, but here we're using JS style comments, which is it?:
```

const DemoComponent = function(props) {
  // Using ES6 to destructure customClass from props
  // After being transpiled, the <div> will have a CSS class of 'wrapperClass'
  const { customClass } = props;
  return (
    <div className={customClass} />
  );
};
<DemoComponent customClass = 'wrapperClass' />
```

* A way to (imperfectly) conceptualize components is as functions, because just like multiple functions can create a more complex program, so too can multiple components create more complex pages/interfaces.  

```React

const MyComponent = function(props) {
	// change code below this line
		return( 
      
      <div> Hello World </div>
      
      )


	// change code above this line
}

```

### Lesson 8: Create a React Component

* The other way to create a React component is with the class syntax of:

```
class ClassNameHere extends React.Component { 
constructor(props){
super(props);
}
render() {
return (
<h1> Hello </h1>
);
}
}
```

* This is beneficial because since the class EXTENDS the React.Component class it has access to many useful features.  

* The other strange thing you see here is the constructor and super methods.  

* The constructor method is a special method used during the initilization of objects that are created with the class keyword.  

&&& It can be helpful to think of objects as blueprints or plans for making the same thing repeatedly.  

* When we create a React component this way we call a constructor, and super, and pass properties(arguments) to both


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

###Lesson 9: Create a component with composition 

* Using multiple components together in React is called Composition.  

&&& Ok, this is where things start to go off the rails for me and I have to ask again, WHAT. ARE. COMPONENTS???!!! If the last exercises were about creating components that are function like, and can be passed arguments, why is this lesson/challenge telling me that components are now like HTML tags.  In the lesson it says you USE react components the same way as an HTML element, but this is not clear enough, because in my mind if components are like functions, then it would seem to be more advantageous to say that 'you CALL/INVOKE components by using an HTML like tag with the component name'.  


&&& This lesson is also confusing for other reasons: A.  the ChildComponent is called in a different way that the user hasn't seen before:
```
const ChildComponent = () => {/* code here */}
```

&&& As a user I'm left wondering, how does this change/affect things, do I need to know about it?


### Lesson 10: Use React to Render nested components 

* React offers many ways to compose components

* One of the most effective ways is to break down the UI to each specific part, and each of those parts becomes a component.  

```React 

const TypesOfFruit = () => {
	return (
		<div>
			<h2>Fruits:</h2>
			<ul>
				<li>Apples</li>
				<li>Blueberries</li>
				<li>Strawberries</li>
				<li>Bananas</li>
			</ul>
		</div>
	);
};

const Fruits = () => {
	return (
		<div>
			{ /* change code below this line */ }
      <TypesOfFruit> </TypesOfFruit>
			{ /* change code above this line */ }
		</div>
	);
};

class TypesOfFood extends React.Component {
  constructor(props) {
  	super(props);
  }

  render() {
    return (
	    <div>
	    	<h1>Types of Food:</h1>
		    { /* change code below this line */ }
        <Fruits> </Fruits>
		    { /* change code above this line */ }
	    </div>
    );
  }
};

```

### Lesson 11: Compose React Components 

```React 

class Fruits extends React.Component {
	constructor(props) {
	  super(props);
  }
  render() {
    return (
      <div>
        <h2>Fruits:</h2>
		    { /* change code below this line */ }
				 <NonCitrus />
         <Citrus />
        { /* change code above this line */ }
      </div>
		);
	}
};

class TypesOfFood extends React.Component {
	constructor(props) {
	 	super(props);
	}
  render() {
  	return (
    	<div>
			  <h1>Types of Food:</h1>
		    { /* change code below this line */ }
					<Fruits />
		    { /* change code above this line */ }
		    <Vegetables />
    	</div>
  	);
	}
};

```


### Lesson 13: Render a Class Component to the DOM 

* Rendering has previously been done for you, but in the wild in order to render React code to the screen/DOM/display we need to call the ReactDOM

&&& In this, and the previous lesson there are refrences to JSX elements, and components, but whenever JSX elements are mentiond all I can think of are HTML elements, it feels like there needs to be a stronger/harder distinction to reinforce how JSX elements are DIFFERENT from components, this is also confusing because am I not using JSX elements in the components???

&&& With the line: 'For JSX elements you pass in the name of the element you want to render {*/ EXAMPLE OF JSX RENDERING NEEDS TO GO HERE /*} There needs to be an example there to juxtapose JSX element rendering, and Component rendering. 

```


class TypesOfFood extends React.Component {
  constructor(props) {
  	super(props);
  }
  render() {
    return (
	    <div>
		    <h1>Types of Food:</h1>
        {/* change code below this line */}
					<Fruits />
        	<Vegetables />
		    {/* change code above this line */}
	    </div>
    );
  }
};

// change code below this line
ReactDOM.render(<TypesOfFood />, document.getElementById('challenge-node'));

```

### Lesson 13: Write a React Component from Scratch


```


// change code below this line

class MyComponent extends React.Component {
 		constructor(props) {
      super(props);
    }
  render () {
    
    return ( <div> <h1>My First React Component!</h1> </div> )
  }
  
};

ReactDOM.render(<MyComponent />, document.getElementById('challenge-node'));

```


### Lesson 14: Pass a string to a stateless functional component 

* One of the other key parts of react is/are props (properties) which are very much like arguments.  

* We use properties in React to pass information from a parent component to a child.  

&&& I'll be honest, even at this point, I'm still kind of lost on parent/child components.  What specifically defines a parent or a component.  The model of React that I still have stuck in my head is that components are like functions, but there aren't really parent/child functions, so how does this translate to React?  

&&& Ok, is a Parent function defined by class ... extends React.Component {}?  If that's true though, how is the proerty(props), passed?

&&& Also, I'm confused by what is meant by 'A props called birthday' Does it mean that the argument is called birthday, or is the props somehow labeled in a different way that is not displayed in the problem explanation?  This is also confusing coming from JS because we're so used to accessing arguments simply by name e.g. function add (num) { return num + 1}, so all of a sudden accessing arguments/properties via dot notation is a changeup that could be explored more in depth/in a more nuanced manner.  

&&& The example code of using custom HTML attributes should be more in depth, because there is still residual confusion on parent/child elements, a visual reinforcement of this would make this easier to understand.  

```React 


const ReturnUsername = (props) => {
	return (
		<div>
			{ /* change code below this line */ }
			<p>Your username is: {props.username }!</p>
			{ /* change code above this line */ }
		</div>
	);
};

class ForgotUsername extends React.Component {
	constructor(props) {
		super(props);
	}
	render() {
		return (
			<div>
				<h3>Whoops! See below...</h3>
				{ /* change code below this line */ }
				<ReturnUsername username="rjr"/>
				{ /* change code above this line */ }
			</div>
		);
	}
};

```

Lesson 15: Pass an Array as props 

* React allows other types of data such as ints, and arrays to pass through as properties/arguments 

* Data types such as strings get passed with things like <MyComponent myProp="String" />, but ints and arrays have to be passed in curly braces.  

```

const Selections = (props) => {
  return (
      <div>
        A {props.attire[2]} day.
        I'm going to wear a {props.shirts[1]}, {props.pants[4]}, and {props.shoes[1]}.
      </div>
  );
};

class OutfitSelector extends React.Component {
  constructor(props) {
  	super(props);

  }
  render() {
    return (
        <div>
        	<h1>What to wear?!</h1>
        	<h3>Today is:</h3>
        	{ /* change code below this line */ }
        	<Selections
            attire={['casual', 'formal', 'super-casual']}
            shirts={['t-shirt', 'sweatshirt', 'collared shirt']}
            pants={['slacks', 'blue jeans', 'khakis', 'shorts', 'pajama pants']}
            shoes={['dress shoes', 'slippers', 'sneakers']}
            />
        	{ /* change code above this line */ }
        	<h3>Tomorrow is:</h3>
        	{ /* change code below this line */ }
          <Selections
            attire={['formal', 'super-casual', 'casual']}
            shirts={['collared shirt', 't-shirt', 'sweatshirt']}
            pants={['slacks', 'khakis', 'shorts', 'pajama pants', 'blue jeans']}
            shoes={['dress shoes', 'sneakers', 'slippers']}
            />
        	{ /* change code above this line */ }
        </div>
    );
  }
};

```

### Lesson 16: Use Default Props

```React 
const ShoppingCart = (props) => {
  return (
		<div>
			<h1>Shopping Cart Component</h1>
		</div>
  )
};
// change code below this line
ShoppingCart.defaultProps = { items: 0 }
```

&&& Ok, this lesson is an abrupt change up because we've largely been working within/between components and suddenly we stopped working with multiple components, and are using functions/properties outside of them.  

### Lesson 17: Override default props 

* we can override default props with other values if we so choose 

&&& Hrmmmm, Ok, why is the defaultProps an object, but quantity a simple JS/JSX expression???

```
const Items = (props) => {
	return <h1>Current Quantity of Items in Cart: {props.quantity}</h1>
}

Items.defaultProps = {
	quantity: 0
}

class ShoppingCart extends React.Component {
	constructor(props) {
		super(props);
	}
  render() {
    { /* change code below this line */ }
    return <Items quantity={10}/>
    { /* change code above this line */ }
  }
};
```

Lesson 18: Use Proptypes to define the proptypes you expect 

* You can check the type of data that you recieve to ensure that it is valid (This is useful for API calls, etc...).  


```React 

const Items = (props) => {
	return <h1>Current Quantity of Items in Cart: {props.quantity}</h1>
};

{ /* change code below this line */ }
Items.propTypes = { quantity: React.PropTypes.number.isRequired };
{ /* change code above this line */ }

Items.defaultProps = {
	quantity: 0
};

class ShoppingCart extends React.Component {
	constructor(props) {
		super(props);
	}
  render() {
    return <Items />
  }
};

```

### Lesson 19: Access Props using this.props 


* If the component type that we're passing a property to is a class/ES6 style component we change conventions slightly.  

* If we refer to a class component within itself we use the this keyword 

```

            <p tempPassword="abcdefghi">Your temporary password is: {this.props.tempPassword} <strong></strong></p>

			
	        <ReturnTempPassword />
	```
	
&&& I think either spacing or priming/signposting could go a long way here.  I overlooked 'Give this componet' <--- Could be changed to make more obvious 'give the ReturnTempPassword component...'.  'Within the child, ' could be updated in 2 ways: 1.  Create a newline between the previous sentence and 'Within the child', also the signposting with the words Next, After that, etc... could also make things a lot more clear so that the following:

```
Instructions: In the parent component ResetPassword, render an instance of the ReturnTempPassword component in the indicated space. Give this component a prop of tempPassword and assign it a value of a string that is at least 8 characters long. Within the child, ReturnTempPassword, lets make sure the user sees the temporary password by accessing the tempPassword prop within the <strong> tags.
```

&&& Would read as:

```
Instructions: In the parent component ResetPassword, render an instance of the ReturnTempPassword component in the indicated space. Give the RETURNTEMPPASSWORD component a prop of tempPassword and assign it a value of a string that is at least 8 characters long. 

[NEWLINE HERE]

[NEXT/AFTER THAT] within the child, ReturnTempPassword, lets make sure the user sees the temporary password by accessing the tempPassword prop within the <strong> tags.
``` 	

### Lesson 20: Using props with stateless functional components

&&& YES! The explanation of functional stateless vs. stateless components vs stateful should come earlier I feel, but that explanation feels like a breath of fresh air and feels like the first time I have had knowledge validated by an external source regarding React.  


```

class CampSite extends React.Component {
  constructor(props) {
    super(props);
  }
  render() {
    return (
      <div>
        <Camper/>
      </div>
    );
  }
};
// change code below this line

const Camper = (props) => {
   return (
     <div>
       <p>{props.name}</p>
     </div>
   );
};

Camper.propTypes = {
	name: React.PropTypes.string.isRequired
};

Camper.defaultProps = {
  name: 'CamperBot'
};


```


	

	