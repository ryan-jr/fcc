
# FCC Notes Lessons1-49


## 2016-12-16


***

# FCC React Challenges ( BETA!)

* React uses a JS extension called JSX that lets you write HTML within JS.  

* All JSX/JS code is put in { curly braces }

* Since JSX is not valid JS, JSX code has to be compiled into JS.  Babel is one such compiler/transpiler that is added behind the sences.  


## React 01: Create a simple JSX element

```React

const JSX = <h1>{'Hello JSX!'}</h1>;

```

### React 02: Create a complex JSX element

* JSX needs to have one parent element, this is usually solved by putting a <div> as the first element and a  </div> as the last element

```React

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
  
  
  );
  ```


  * To put comments inside JSX, you use the syntax {/* */} to wrap around the comment text.

```React

const JSX = (
<div>
	<h1>This is a {/* comment*/} block of JSX</h1>
  
	<p>Here's a subtitle</p>
</div>);

```




***
***

#### 4: Render HTML Elements to the DOM

* React allows you to render JSX as HTML to the DOM using React's Rendering API, ReactDOM.

* To Render the JSX as HTML we use the method ReactDOM.render( COMPOENENTTORENDER, targetNode)

* The first argument is what you want to render, the second argument is teh DOM node you want to render ( either by ID or class )


### Code: 

```React

const JSX = (
<div>
	<h1>Hello World</h1>
	<p>Lets render this to the DOM</p>
</div>
);
// change code below this line
ReactDOM.render(JSX, document.getElementById('challenge-node'));

```

***
***

#### 5: Define an HTML Class in JSX

* Since class is a reserved word in JS/JSX, you can't use it like you typically would with HTML and what would normally be a class in HTML becomes className in JSX/React


### Code: 

```React


const JSX = (
<div  className="myDiv">
	<h1>Add a class to this div</h1>
</div>);

```

***
***

#### 6: Self Closing JSX Tags

* Some tags such as <br> or <img> don't have a closing tag.  The way to get around this is self closing tags such as <br /> or <img />


### Code: 

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

***
***

#### 7: Create a Stateless Function Component

* Components are everything/at the core of React.  

* Components are JS functions that start with a capital letter, to create a component with a function you simply write a JavaScript function which returns either JSX or null.

* Because a JSX component like this represents HTML, you could easily stitch together a more complex HTML page with several JSX components. This is one of the key advantages of the component architecture React provides: it allows you to compose your UI from many separate, isolated components. This makes it easier to build and maintain complex user interfaces.


### Code: 

```React

const MyComponent = function(props) {
	// change code below this line

return (<div> "Hello World" </div>);

	// change code above this line
}

```

***
***

&&& Ok, at this point I'm confused as to what a component is.  Is a component a Javascript Function? Is a component an HTML tag inside a JS function?

&&& Even Facebook's React documentation does a poor job explaining what a React component is 

[Facebook React Documentation](https://facebook.github.io/react/docs/components-and-props.html)

```
Components let you split the UI into independent, reusable pieces, and think about each piece in isolation.

Conceptually, components are like JavaScript functions. They accept arbitrary inputs (called "props") and return React elements describing what should appear on the screen.
```

&&& All that tells me is what React components are LIKE, not what they ARE.  

&&& This needs to be more direct, clear, and granular in explaining what a component is, especially not having much exposure to it before.  

&&& A better description would be: A React component is a Javascript function that returns HTML element(s)



#### 8: Create a react component

* The other way to create a creact component with the class Syntax like so:

```React

// Creates the class Kitten which extends React.Component
class Kitten extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    return (
    	<h1>Hi</h1>
    );
  }
}

```

* You might notice the constructor and super methods in the above code.  

* Calling super() will call the constructor of the Parent class, in this case React.component

* A constructor is a special method used during initilization of objects created with the class keyword.  Everything you see above, including props being passed, is standard.  


### Code: 

```React


class MyComponent extends React.Component {
	constructor(props) {
		super(props);
	}
  render() {
    return (
	    // change code below this line
		<div>
        <h1>{'Hello React!'}</h1>
        </div>


	    // change code above this line
    );
  }
};


```

***
***

#### 9: Create a Component with Composition

*  Another important principle in React is Composition, which is multiple components put together.  


### Code: 

```React

const ChildComponent = () => {
	return (
		<div>
			<p>I am the child</p>
		</div>
	);
};

class ParentComponent extends React.Component {
  render() {
    return (
	    <div>
	    <h1>I am the parent</h1>
	    { /* change code below this line */ }
	    
				<ChildComponent />
	    { /* change code above this line */ }
	    </div>
    );
  }
};

```

***
***

#### 10:  Challenge: Use React to Render Nested Components



* 


### Code: 

```React



```

&&& Ok, at this point I'm confused.  Are components JS functions, or are they the HTML like tags that display elements to the DOM?

&&& Ok, after taking a little more time I get it now, I'm visually expressing the functions by calling them in the HTML tags.  

&&& The concept of WHAT components are and HOW to express them needs to be made more clear, because what I get from this lessson is that HTML tags are components.  I get that impression because at this point I could very easily confuse that the HTML tags themselves are somehow components.  

***
***

#### 11:  Challenge: Compose React Components


* We can compose more complex UIs/output through using components/elements.  


### Code: 

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
		)
	}
}

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

***
***

#### 12: Render a Class Component to the DOM

* Remember, to actually render things to the DOM we need to use the ReactDOM API.  

* The previous challenges focused on components, but in reality you need to make a call to the ReactDOM API in order to render things

* The React API call looks like: ReactDOM.render( componentToRender, targetNode)


&&& Hey, there needs to be a better example provided because I've totally forgotten what/how things need to be rendered.  

&&& I originally tried to use ReactDOM.render( TypesOfFood, 'id=challenge-node'); Because if this is my first time using ReactDOM.render, I need a refresher on what it should look like.  

### Code: 

```React


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

***
***

#### 13:  Write a React Componenet from Scratch

* 


### Code: 

```React

// change code below this line
class MyComponent extends React.Component {
	constructor(props) {
		super(props);
	}
  render() {
    return (
			<div>
				<h1>My First React Component!</h1>
			</div>
    );
  }
};

ReactDOM.render(<MyComponent />, document.getElementById('challenge-node'));

```

***
***

#### 14: Pass a String to a Functional Component

* In React we use properties ( props ) to pass information from a parent component to a child

* React props are just weird...

&&& Ok in this less, this really seems like a change up with const, having never seen const before, and also that combined with the arrow function that I've never seen before doesn't help.  After looking them up I understand them, but I don't understand WHY they're being used or how they help me in this instance.  

### Code: 

```React


const ReturnUsername = (props) => {
	return (
		<div>
			{ /* change code below this line */ }
			<p>Your username is: { props.ReturnUsername }!</p>
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
				<ReturnUsername username="FreeCodeCamp"/>
				{ /* change code above this line */ }
			</div>
		);
	}
};

```

***
***

#### 15: Pass an array as props

* We can pass other datatypes as args/props, we do this by passing the datatype in { }

&&& This code is confusing coming from JS because with using props.attire[2], for example, it seems like I am accessing something before it is declared.  It needs to be made MORE CLEAR that everything else on the page will run, and THEN the component/function will happen.  


### Code: 

```React

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

***
***

#### 16: Use Default Props

* You can assign default props to a component as a property of the compnenet itself for example:

```React

MyComponent.defaultProps = { location: 'San Francisco' } 

```

* Defines a default location prop to be assigned/set to the string San Francisco, unless otherwise specified. 

* Default props are assigned if props are undefined, but if you pass null as the value of a prop it will stay null


### Code: 

```React

const ShoppingCart = (props) => {
  return (
		<div>
			<h1>Shopping Cart Component</h1>
		</div>
  )
};

// change code below this line
ShoppingCart.defaultProps = {
	items: 0
}

```

***
***

#### 17: Override Default Props

* 


### Code: 

```React

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
    return <Items quantity={10} />
    { /* change code above this line */ }
  }
};

```

***
***

#### 18:  Use PropTypes to Define the Props you Expect

* You can set a typechecking feature in react to verify that components are receving props of the correct type.  


### Code: 

* To check the data type it must be in the form of:

```
COMPONENTNAME.propTypes = {
	quantity: React.PropTypes.number.isRequired
};
```

```React

const Items = (props) => {
	return <h1>Current Quantity of Items in Cart: {props.quantity}</h1>
};

{ /* change code below this line */ }
Items.propTypes = {
	quantity: React.PropTypes.number.isRequired
};
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

***
***

#### 19:  Access Props Using this.props

* 


### Code: 

```React
class ReturnTempPassword extends React.Component {
  constructor(props) {
  	super(props);

  }
  render() {
    return (
        <div>
            <p>Your temporary password is: <strong>{this.props.tempPassword}</strong></p>
        </div>
    );
  }
};

class ResetPassword extends React.Component {
  constructor(props) {
  	super(props);

  }
  render() {
    return (
        <div>
        	<h2>Reset Password</h2>
        	<h3>We've generated a new temporary password for you.</h3>
        	<h3>Please reset this password from your account settings ASAP.</h3>
        	{ /* change code below this line */ }
          <ReturnTempPassword tempPassword="serrPbqrPnzc" />
        	{ /* change code above this line */ }
        </div>
    );
  }
};


```

***
***

#### 20: Challenge: Using Props with Stateless Functional Components


*  A functional stateless component is any function you write which accepts props and returns JSX. A stateless component, on the other hand, is a class that extends React.Component so long as it does not use intenal state (what we'll learn about next). Finally, a stateful component is any component that does maintain its own internal state. Stateful components may also be referred to simply as components or React components.



### Code: 

```React

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

***
***

#### 21: Create a stateful component

* State is any data that can change over time that your app needs to know about, so that React can update it and display it as needed.  

* We create state in React by declaring the state property on the component class in it's constructor (e.g. after super, but before render)

* State must be set to a JS object

* In order to create an object with state you need to create a class component by extending React.Component.  

### Code: 

```React


class StatefulComponent extends React.Component {
	constructor(props) {
		super(props);
		// initialize state here
    this.state = {
      name: "Hello"
    }
	}
  render() {
    return (
	    <div>
	    	<h1>{this.state.name}</h1>
	    </div>
    );
  }
};


```

***
***

#### 22:  Render State in the UI

* Note that state is local only to that component, unless it passes down it's state as props/arguments( we will see this later)


### Code: 

```React

class MyComponent extends React.Component {
	constructor(props) {
		super(props);
		this.state = {
			name: 'Free Code Camp'
		}
	}
	render() {
  	return (
	    <div>
	    	{ /* change code below this line */ }
	    	// Note that the code below doesn't work because of the whitespace before and after the { }
        <h1> {this.state.name} </h1>
	    	{ /* change code above this line */ }
	    </div>
    );
  }
};

```

***
***

#### 23: Render State in the UI Another Way

* In the render method we can access state in another way  by assining a variable to the state that we want to access

* We can then reference that variable in the return statement.  


### Code: 

```React

class MyComponent extends React.Component {
	constructor(props) {
		super(props);
		this.state = {
			name: 'Free Code Camp'
		}
	}
	render() {
		// change code below this line
				const name = this.state.name
	  // change code above this line
  	return (
	    <div>
	    	{ /* change code below this line */ }
        <h1>{name}</h1>
	    	{ /* change code above this line */ }
	    </div>
    );
  }
};

```

***
***

#### 24: Set state with Set.state

* 

&&& Ok so apparently the react setState method is very picky about how you use/utilize it because it wants { } and an object to update, as opposed to the other methods that we've used that simply replace something with string.replace("Hello world")

### Code: 

```React

class MyComponent extends React.Component {
	constructor(props) {
		super(props);
		this.state = {
			name: 'Initial State'
		};
		this.click = this.click.bind(this);
	}

	// I originally tried to change this to this.name.setState("React Rocks!");

	click() {
		 // change code below this line
		this.setState({
			name: 'React Rocks!'
		});
	  // change code above this line
	}
	render() {
  	return (
	    <div>
        <button onClick = {this.click}>Click Me</button>
        <h1>{this.state.name}</h1>
	    </div>
    );
  }
};

```

***
***

#### 25:  Bind this to a Class Method

* class methods often become aware of this by binding this in the constructor, we saw an example in the last challenge with this.click = this.click.bind(this)


* In order to bind items properly the binding needs to be in the form of this.CLASSMETHOD = this.CLASSMETHOD.bind(this);

* Also note how in order to change a counter we need to add a method and update it's state with the object format and this.setState( { KEYNAME: this.state.VALUENAME + 1});
### Code: 

```React

class MyComponent extends React.Component {
	constructor(props) {
		super(props);
		this.state = {
			itemCount: 0
		};
		this.addItem = this.addItem.bind(this);
	}
	addItem() {
		this.setState({
			itemCount: this.state.itemCount + 1
		});
	}
	render() {
  	return (
	    <div>
        <button onClick = {this.addItem}>Click Me</button>
        <h1>Current Item Count: {this.state.itemCount}</h1>
	    </div>
    );
  }
};

```

***
***

#### 26: Bind this with an ES6 Arrow Function

&& There needs to be a link to arrow functions in action, because I have no idea how they work



* This is another way to bind a function, Arrow functions, are a more succinct way of writing functions.  https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Functions/Arrow_functions


### Code: 

```React

class MyComponent extends React.Component {
	constructor(props) {
		super(props);
		this.state = {
			message: 'Hello!'
		};
	}
	setMessage = () => {
		this.setState({
			message: 'Goodbye!'
		});
	}
	render() {
  	return (
	    <div>
        <button onClick = {this.setMessage}>Click Me</button>
        <h1>{this.state.message}</h1>
	    </div>
    );
  }
};

```

***
***

#### 27: Use State to toggle an element

* Here we use state in a way that updates the UI based upon an event listener


### Code: 

```React

class MyComponent extends React.Component {
	constructor(props) {
		super(props);
		this.state = {
			visibility: false
		};
	}
	toggleVisibility = () => {
 	 this.setState({
   	 visibility: !this.state.visibility
    });
	}
	render() {
		if (this.state.visibility) {		
	  	return (
		    <div>
	        <button onClick = {this.toggleVisibility}>Click Me</button>
	        <h1>Now you see me!</h1>
		    </div>
	    );
  	} else {
  		return (
		    <div>
	        <button onClick = {this.toggleVisibility}>Click Me</button>
		    </div>
	    );	
  	}
  }
};

```

***
***

#### 28: Write a counter

* Here, we combine what we've learned to write methods for buttons that are being displayed

&&& Do I name this stuff after className, or do I name it something else is the first question I have...

### Code: 

```React

class Counter extends React.Component {
	constructor(props) {
		super(props);
		this.state = {
			count: 0
		};
	}
	// change code below this line

increment = () => {this.setState({ count: this.state.count + 1});};
decrement = () => {this.setState({ count: this.state.count - 1});}
reset = () => {this.setState({count: 0});}
	// change code above this line
	render() {
  	return (
	    <div>
        <button className='inc' onClick={this.increment}>Increment!</button>
        <button className='dec' onClick={this.decrement}>Decrement!</button>
        <button className='reset' onClick={this.reset}>Reset</button>
        <h1>Current Count: {this.state.count}</h1>
	    </div>
    );
  }
};

```

***
***

#### 29: Create a controlled inpu

* Although input is usually handled with HTMLs <input> and <textarea>, with React we can move this to a mutable state component


&&& Ok, the onChange(), handler is bad here because it makes it seem like onChange is a method, when in reality it is an HTML attribute.  
### Code: 

```React
class ControlledInput extends React.Component {
	constructor(props) {
		super(props);
		this.state = {
			input: ''
		};
	}
	handleInput = (event) => {
		this.setState({
			input: event.target.value
		});
	}
	render() {
  	return (
	    <div>
        <input
        	value={this.state.input}
        	onChange={this.handleInput} />
        <p>Input: {this.state.input}</p>
	    </div>
    );
  }
};


```

***
***

#### 30: Create a Controlled form

* With this challenge we're writing an input button, a submit, button, and an event handler when we click the submit button


### Code: 

```React

class MyForm extends React.Component {
	constructor(props) {
		super(props);
		this.state = {
			input: '',
			submit: ''
		};
	}
	handleChange = (event) => {
		this.setState({
			input: event.target.value
		});
	}
	handleSubmit = () => {
		this.setState({
			submit: this.state.input
		});
	}
	render() {
  	return (
	    <div>
        <input
        	value={this.state.input}
        	onChange={this.handleChange} />
        <button onClick={this.handleSubmit}>Submit!</button>
        <h1>{this.state.submit}</h1>
	    </div>
    );
  }
};

```

***
***

#### 31: Pass State as Props to Child Components

* 
&&& Ok, with this one, how am I supposed to figure out that it needs a name attribute...

&&& Also, coming from a JS background props still makes no sense, if it's an argument that's being passed along how does it go from one function to another???!!!

### Code: 

```React

class MyApp extends React.Component {
	constructor(props) {
		super(props);
		this.state = {
			name: 'CamperBot'
		}
	}
  render() {
    return (
	   	<div>
	   		<Navbar name={this.state.name}/>
	   	</div>
    );
  }
};
class Navbar extends React.Component {
	constructor(props) {
		super(props);
	}
	render() {
		return (
		<div>
			<h1>Hello, my name is: {this.props.name}</h1>
		</div>
		);
	}	
};

```

***
***

#### 32: Pass a callback as props

* 


### Code: 

```React



```

***
***

#### 33: 

* 


### Code: 

```React



```

***
***

#### 34: 

* 


### Code: 

```React



```

***
***

#### 35: 

* 


### Code: 

```React



```

***
***

#### 36: 

* 


### Code: 

```React



```

***
***

#### 37: 

* 


### Code: 

```React



```

***
***

#### 38: 

* 


### Code: 

```React



```

***
***

#### 39: 

* 


### Code: 

```React



```

***
***

#### 40: 

* 


### Code: 

```React



```

***
***

#### 41: 

* 


### Code: 

```React



```

***
***

#### 42: 

* 


### Code: 

```React



```

***
***

#### 43: 

* 


### Code: 

```React



```

***
***

#### 44: 

* 


### Code: 

```React



```

***
***

#### 45: 

* 


### Code: 

```React



```

***
***

#### 46: 

* 


### Code: 

```React



```

***
***

#### 47: 

* 


### Code: 

```React



```

***
***

#### 48: 

* 


### Code: 

```React



```

***
