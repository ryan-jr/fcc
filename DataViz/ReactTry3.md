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

5.  After sitting through a bunch of React tutorials I'm still wondering about ParentComponents and Child components, and how they interact.  No tutorial I've found, really seems to drive this point home, or how to distinguish between them.  It seems strange to introduce the concept of parents/children here without FULLY breaking it down/explaining it, ESPECIALLY if you're going to use the concept in future lessons.   

```

### Lesson 10: use React to Render nested Components


* There are multiple ways to render react components

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
				<TypesOfFruit />
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
<Fruits />
		    { /* change code above this line */ }
	    </div>
    );
  }
};
```


```
// Issues with lesson 10
1.  It would seem easier to introduce the analogy/concept of nesting components in lesson 9, to make it easier for the student to conceptualize/understand what composition/composing is.  

2.  Yeah I'm still really confused on Parent/Child components, because all of these seem like separate classes/functions, HOW are they child/parent components and explain WHY child component is that way.  After going through lesson 11 I now understand (or seem to understand) that child components, are components that are rendered inside of another component, but that's not really highlighted in this lesson.  

```

### Lesson 11: Compose React Componets

* you can render functionl stateless components and class extension components the same way 


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


### Lesson 12: Render a class Component to the DOM.  


* We can render a Class Component to the Dom, much like anything else, we just have to use a component tag for it.  

```
// Issues with lesson 13.

1.  Ok, by 'child element', do you mean "Render the component as part of another component"? Because that really doesn't come clear until now...

If that's the case then there needs to be MUCH more direct verbage drawing attention to this fact with something in the Intro similar to:
" When we render one component within another, this is known as making it a child component, and we do so by creating a custom HTML tag (for example <ChildComponent /> inside the parent compoent"
```

### Lesson 13: Write a React Component from Scratch

* Write a class React component from scratch, be sure to include constructor, and super


```React

// change code below this line
class MyComponent extends React.Component {
  	constructor(props) {
      super(props);
    }
  render () {
    return (
      <div> <h1>My First React Component!</h1> </div>
      )
  }
  };
  
  ReactDOM.render(<MyComponent />, document.getElementById('challenge-node'));
  ```

### Lesson 14: Pass a string to a stateless functional component

* Props is short for properties, you can think of these as arguments, because they pretty much are as they allow you to pass information from a parent component to a child.  


```


const ReturnUsername = (props) => {
	return (
		<div>
			{ /* change code below this line */ }
			<p>Your username is: { props.username}!</p>
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
				<ReturnUsername username="Quincy Larson" />
				{ /* change code above this line */ }
			</div>
		);
	}
};
```

```
// Issues with lesson 14

This section in the Intro:
"
The code editor shows a functional component called ReturnUsername that accepts an argument called props. You can access props from within the component using dot notation. For example, if you passed in a prop called birthday, you would access its value by writing props.birthday. In JSX, that value is JavaScript, so you write it as {props.birthday}.

In order to define a props name and value, React uses custom HTML attributes. The attribute name is the prop name, and the attribute value is the prop's value. For example, to pass a child component a prop called birthday, when you compose the child component within the parent, it could look like this: <Child birthday="Jul 6th, 1986" />. ""

NEEDS to be hammered harder.  Here's why:
1.  As a someone coming from vanilla JS I'm SUPER confused why what were previously called arguments, are now being universally refered to as props.  
2.  The usage of custome HTML attributes is also REALLY foreign, especially since we're using custom HTML tags to call/utilize/render components.  
3.  The last sentence is confusing because previously examples have used <MyComponent /> as an example piece/block of code, what could make this more clear is A.  when you refer to 'child component' in the last sentence refer to it as: 'the component Child', or make it even more clear with: 'ChildComponent' to drive the distinction home.  or B: just refer to it as MyComponent.  

4.  Because this is so integral to everything else I would STRONGLY recommend at least to changes here:
1.  Cut down the example that you're using here to allow students to focus more on how this works.  E.G. Simplify the code more
2.  Make this multiple lessons to reinforce it.  

Something like this as an introductory lesson:
&&&

class MyComponent extends React.Component {
  
  render() {
  
    return ( <div> 
        <h1> Hello there {this.props.name} {this.props.newName}
        </h1>
        
        <h2> You are number {this.props.number}!</h2>
        </div>
    
    
    )
  }
}

ReactDOM.render(<MyComponent name="awesome" newName="Quincy" number={1}/>, document.getElementById('myDiv'));
&&&

Makes it MUCH easier to understand, because I can draw a 1 to 1 parallel between what is named, and what is being utilized.  I understand that it possibly introduces 'this' before you want to expalin it, but I think that's a small price to pay.  

```

### Lesson 15: Pass an array as props

* When you pass something that is other than a string as a prop(argument/custom HTML attribute) it needs to be in { } curly braces

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

### Lesson 16: Define Default Props

* We can define default props on components

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

```
// Issues with Lesson 16

1.  This was a little confusing because I thought that the only thing I could put below a component is ReactDom.render()
```


### Lesson 17: Override default props

* We can override default props

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

### Lesson 18: Use PropTypes to Dfine the Props you Expect

* You can set the type of data that a component should recieve.  


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

```
// Issues with lesson 18

1.  Ok, this is confusing because it should be made more clear that what is being checked is not neccessarily the quantity prop, but the value associated with the quantity key, because this is what I initially entered:
Items.propTypes = {React.PropTypes.number.isRequired
};
```

### Lesson 19: Access Props using this.prop



```
// Issues with Lesson 19:

1.  Thank you for providing a solid explanation of WHY we use the this keyword...SOOOOOO many tutorials don't cover it at all

2.  The following set of sentences are unclear:
"Render an instance of the ReturnTempPassword component in the parent component ResetPassword. Give this component a prop of tempPassword and assign it a value of a string that is at least 8 characters long."
The word 'this' in the second sentence seems like it could refer to either the ResetPassword component OR the ReturnTempPassword component.

```

### Lesson 20: Review Using Props with Stateless functional components

* Stateless functional components, act like pure functions in that they accept properties as input and return the same view every time they are passed the same prop.  

* Terminoligy Review:
A stateless functional component is any function you write which accepts props and returns JSX. A stateless component, on the other hand, is a class that extends React.Component, but does not use internal state (covered in the next challenge). Finally, a stateful component is any component that does maintain its own internal state. You may see stateful components referred to simply as components or React components. 


```React
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

```
// Issues with Lesson 20
1.  YES!!! The Terminoligy Review is ABSOLUTELY ON POINT, and should be leveraged more heavily/often/earlier in the lessons to make things more clear/explicit for students.  

```

### Lesson 21: Create a Stateful component

* State consists of any data the app needs to know about that can change over time.  

* State changes should be reflected within the UI as neccessary.  

* State is initialized through the state property on the component class, in the classes constructor.  

* STATE MUST BE A JS OBJECT

```

this.state = { example: "name"};

```

* It's possible to access state through the life of the component for rendering, passing as props, updating, etc..

* IN ORDER TO CREATE STATE YOU HAVE TO CREATE A CLASS COMPONENT!!!


```React

class StatefulComponent extends React.Component {
	constructor(props) {
		super(props);
		// initialize state here
    this.state = { name: "Quincy" }
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

```
// Issues with lesson 21: 
1.  The only thing I might recommend is to add more detail to the example object, in case people don't remember/recall the format of JS objects

```

### Lesson 22: Render State in the UI

* Once you define a component's initial state, you can display any part of it in the UI that is rendered. If a component is stateful, it will always have access to the data in state in its render() method. You can access the data with this.state. 


* If you want to access a state value within the return of the render method, you have to enclose the value in curly braces. 



```
Issues with Lesson 22:
1.  This is a near perfect intro block, it answers the questions of WHAT has to be done, HOW it has to be donw, and WHY it has to be done

2.  The issue come with the 3rd paragraph of the intro block: "Note that if you make a component stateful....".  This is an issue because it introduces too much at once IMO, and could be put into an additonal lesson.  
```


### Lesson 23: Render State in the UI another way

* It is possible to write pure JS(without curly braces )

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
        <h1> {name} </h1>
	    	{ /* change code above this line */ }
	    </div>
    );
  }
};

```

```
Issues with Lesson 23:
1.  This is a perfect lesson, short, simple, descriptive, to the point, and explains everything the correct amount.  
```

### Lesson 24: Set Stat with this.setState

* We can change a components state using this.setState(). 

* To update state we pass in a JS object with key/value pairs.  

* The key is the state property and values are the updated data.  

* Always use this.setState to update state.  

```React 

class MyComponent extends React.Component {
	constructor(props) {
		super(props);
		this.state = {
			name: 'Initial State'
		};
		this.click = this.click.bind(this);
	}
	click() {
		// change code below this line
			this.setState( { name: "React Rocks!"} );
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

```
// Issues with lesson 24:
You use 'this' 3 times in one sentence here: "
You call this method within your component class like this: this.setState(), passing in an object with key-value pairs.".  One of those times is as a keyword, using 'this' so many times is confusing.  A better re-write would be: "You call the setState method with your component class like so: this.setState()..." 

2.  If you're going to tell me that I should not modify state directly, please provide a concise reason why.  Will it break the app? Will it display incorrectly? Is it a security issue I should be aware of?


3.  The first  2 sentences of the instructions here feel like unncessary information, you're telling me too much.  This lesson would  seem to work perfectly fine if you removed them

4.  An example of what this.setState looks like would work REALLY well here, because as a student I see this.state = { */ code here /* }, and assume that this.setState() is similar, to the point where I could see many students falling into the trap of typing: this.setState() = { */ code here /* }

```

### Lesson 25: Bind 'this' to a class method 

* I have no idea what's going on.jpg

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
```
// Issues with lesson 25:
1.  Ok, this lesson intro is terribly confusing.  I've read the intro half a dozen times now and I still can't really make sesne of it, the my main problems are:
A.  The first paragraph is unclear.  What is meant by define methods 'on' my component class?  Do you mean define methods 'within' my component class?  B.  Next it's writtin that "A class method needs to use the this keyword so it can access properties on the class (such as state and props), inside the scope of the method".  The second sentence is unclear because of the word 'properties' in this context getting conflated with props/state.  It may be better to refer to 'properties' as data or information.  Also in this sentence saying 'on the class' is confusing, do you mean 'we can define methods that are part of the class'.  This is only partially resolved by the language following the parentesis of 'inside the scope of the method', but also feels like a lot of jargon/buzzwords to throw out in 2 sentences that are not direct/clearly explicated.  

2.  The whole second paragraph feels like a mess.  
A.  The first sentence makes no sense, what does it mean to bind 'this' to a class method? What does that do, and why does that matter?  It seems like you try to explain that in the last sentence, but even that sentence makes things less clear.  
B.  In the last sentence when you try to clear things up, I get lost when you write: 'this refers to the class and will not be undefined'.  Ummmmm, what??? Please unpack that sentence more for me.  I don't understand why the 'this' keyword is so important, other than I need to use it when I call props or state in class based components.  

C.  Ok, I stepped away for an hour, grabbed lunch, and came back, and re-read all of the instructions/intro...I'm still lost.  
```


### Lesson 26: Bind this with an arrow function

&&&

* I'm sure that if the previous lesson were broken down into further pieces, but I still don't know what 'this' really is or why it matters.  

* I'm also confused by what is meant by 'context' in this instance, an example would REALLY help here.  

* Another example of an arrow function would also go a long way here.  

### Lesson  27: Use State to toggle an element

* We can use state in React apps to monitor the status of a value

* Ok, I built an arrow function...but I don't know why I'm building an arrow function, or why I need to bind this...I have no doubt my lack of insight is because of the 2 previous lessons.  

```React

class MyComponent extends React.Component {
	constructor(props) {
		super(props);
		this.state = {
			visibility: false
		};
	}
	// change code below this line
		toggleVisibility = () => {
     this.setState({ visibility: !this.state.visibility }) 
      
    }
	// change code above this line
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

### Lesson 28: Write a Simple Counter

* Ok, after writing methods from before, and seeing how they were implmented in the solutions prior, this challenge makes sense


```React

class Counter extends React.Component {
	constructor(props) {
		super(props);
		this.state = {
			count: 0
		};
	}
	// change code below this line
increment = () => {
 this.setState({ count: this.state.count + 1}) 
}

decrement = () => {
 this.setState({ count: this.state.count - 1}) 
}

reset = () => {
 this.setState({ count: 0}) 
}

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


### Lesson 29: Create a controlled input

* 


```React

class ControlledInput extends React.Component {
	constructor(props) {
		super(props);
		this.state = {
			input: ''
		};
	}
	// change code below this line
		handleInput = (event) => { 
      this.setState({ input: event.target.value}) }
	// change code above this line
	render() {
  	return (
	    <div>
        { /* change code below this line */}
					
				<input value={this.state.input} onChange={this.handleInput} />
      	{ /* change code above this line */}
        <p>Input: {this.state.input}</p>
	    </div>
    );
  }
};
```

```
// Issues with lesson 29
1.  Ok, this was a lot to handle, but managable, I just had to break everything down into pieces, which was possible because while there was a fair amount of jargon, it was all relatable, and clearly built on things that came before.  I'm REALLY thankful that the tests are there
2.  The first sentence of the second paragraph is confusing, is it a 'paramater' or is it a 'prop/property'?  
```


### Lesson 30: Create a Controlled Form

* React can control the internal state for elements like input/textarea (this type of control makes them controlled components).  



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

```
// Issues with Lesson 30
1.  Ok, this one pushed me just past my limit of where I felt that I was doing too much.  After a half hour of submitting my code, looking at the solution, going back and forth between the 'right code' and the code I submitted, I eventually just gave up, because I couldn't figure out what I was doing wrong.  
```

### Lesson 31: Pass state as Props to child components




```
1.  Ok, I'm confused on how Unidirectonal data flow works... Where is props/the argument pulling it's data from???
2.  Ok, I spent about 20 minutes playing around with this in order to figure it out.  I added a second key/value pair in the state object in order to make more sense of it, here's how it makes sense in my mind:
A.  We declare Navbar with a custom HTML tag in the React component MyApp render section.
B.  In this custom HTML tag we add the custome attribute of name.  
C.  The custom name attribute, holds the value of the object of MyApp known as this.state, specifically it holds the value of key name.  the custom name attribute  holds this value through what we have covered in previous lessons by utilizing this.state.name.  
D.  Here's where the trick comes in.  Notice that the Navbar component does not have a name attribute, ONLY the Navbar custom HTML tag has the name attribute.  
E.  In the Navbar component  we are able to access the custom attributes, but we access them because they were passed in via props (via background magic I assume).  Sooooo, we use {this.props.ATTRIBUTENAME}

3.  Nowhere in previous lessons or even in this one, does it feel like the link between attributes and props gets fully articulated which leads to confusion.  
```


### Lesson 32: Pass a callback as props

* You can pass state as props to child compoonents, but you're not limited to passing data, you can also pass handler funcitons.  

* You can also pass any method that's defined in a react component to a child component





```
// Issues with Lesson 32:
1.  Ok, I was able to figure this one out, but only after some guesswork.  The way the following sentences are constructed are confusing to me:
"Add GetInput to the render method in MyApp, then create a prop called input and pass the inputValue from state to it. Also create a prop called handleInput and pass the input handler handleChange to it"
A.  What do you mean by 'create a prop'??? I had to guess that what was meant by this was: "create a custom attribute". 
B.  It is really easy for me at this point to conflate prop and state, so when you say 'create a prop and pass inputValue from state', I'm confused as to wether I should be typing {this.props.inputValue} or {this.state.inputValue} because both would seem to be valid given how the preceeding sentence is constructed.  
```

### Lesson 33: Use the lifecycle Method ComponentWillMount

* React lifecycle methods allow us to catch components at specific points in time such as before they are rendered, before they update, before they recieve props etc...

```React

class MyComponent extends React.Component {
	constructor(props) {
		super(props);
	}
	componentWillMount() {
		// change code below this line
			console.log("hello world");
		// change code above this line
	}
  render() {
    return <div />
  }
};
```

```
// Issues with lesson 33:
1.  All good, makes total sense.  
```

### Lesson 34:

* we can retrieve data with componentDidmount which renders after a component is mounted to the DOM, and any changes to state will re-render your component as neccessary.  

```React

class MyComponent extends React.Component {
	constructor(props) {
		super(props);
		this.state = {
			activeUsers: null
		};
	}
	componentDidMount() {
		setTimeout( () => {
			this.setState({
				activeUsers: 1273
			});
		}, 2500);
	}
  render() {
    return (
			<div>
				<h1>Active Users: { this.state.activeUsers }</h1>
			</div>
    );
  }
};
```

```
// Issues with Lesson 34:
1.  This one primarily makes sesne, but to be fair I tried to use the code of {this.componentDidMount.state.activeUsers}
```

### Lesson 35: Event listeners

* event listeners listen for things like keydown in order to figure out what's going on

```React

class MyComponent extends React.Component {
	constructor(props) {
		super(props);
		this.state = {
			message: null
		};
	}
	// change code below this line
	componentDidMount() {
			document.addEventListener('keydown', this.handleKeyPress);
	}
	componentWillUnmount() {
			document.removeEventListener('keydown', this.handleKeyPress());
	}
	// change code above this line
	handleEnter = () => {
		this.setState({
			message: 'You pressed the enter key!'
		});
	}
	handleKeyPress = (event) => {
    if (event.keyCode === 13) {
    	this.handleEnter();
    }
  }
  render() {
    return (
			<div>
				<h1>{this.state.message}</h1>
			</div>
    );
  }
};
```

```
// Issues with lesson 35: 
1.  Made solid sense
```

### Lesson 36: Manage updates with lifecycle methods

* Another lifecycle method is componentwillrecieveprops.  

* That particular lifecycle method is called whenver a component is recieveing new props.  The method recieves the new props as a nextProps argument to be used and compared with this.state.  

* Another useful method is componentDidUpdate, which is called immediatley after a component re-renders. 

* Note that rendering and mounting are 2 different things in the component lifecycle.  


```React

class Dialog extends React.Component {
	constructor(props) {
		super(props);
	}
	componentWillUpdate() {
		console.log('Component is about to update...');
	}
	// change code below this line
	componentWillReceiveProps() {
    
   		console.log(this.props);
			console.log(this.nextProps); 
  }
  componentDidUpdate() {
  
  console.log("hello")
  
  }
	// change code above this line
  render() {
    return <h1>{this.props.message}</h1>
  }
};

class Controller extends React.Component {
	constructor(props) {
		super(props);
		this.state = {
			message: 'first'
		};
	}
	changeMessage = () => {
		this.setState({
			message: 'second'
		});
	}
  render() {
    return (
			<div>
				<button onClick={this.changeMessage}>Update</button>
				<Dialog message={this.state.message}/>
			</div>
    );
  }
};

```

```
// Issues with Lesson 36
1.  This one made sense
```

### Lesson 37: Optimize Re-renders with shouldComponentUpdate

* As it is right now if a component recieves new state or pros, it re-renders itself and all its children.  

* The shouldComponentUpdate method lets you declare if components should update or not with the nextProps and nextState paramaters.  


```
// Issues with lesson 37
1.  hrmmmm why is it not this.nextProps.value?  Ohhhhh, is it becuase nextProps is already in the shouldComponentUpdate function?  Hrmmmm, so I guess the question still is: when is 'this' used, and when is it not/what is the purpose/function of 'this'?
2.  Why can I not use an if statement here?  I know from other tutorials that React is picky about using if/else statements, but it's the first thing that comes into my mind from JS
3.  Ok, I'm curious as to how the shouldComponentUpdate method stops the render from happening unless a condition is met, but for now I'll take it as React Magic(tm)
```

###38: Introducing Inline Styles

* We can use CSS like styles in our JSX code/HTML tags much like we apply classes to them, through a cusom attribute called: style that has specific selectors.  e.g: <div style={{color: "red", fontsize: 12}}

```
// Issues with lesson 38: 
1.  This makes complete sense.  
```

### Lesson 39: Add Inline Styles in React

* Anything that is hyphenated becomes camelCase in React

* Note that styles are really just a JS object.  



```
// Issues with lesson 39
1.  It just seems strange that the entirety of the border property/selector/value has to be a string inside the JS object

```


### Lesson 40: Use advanced JS in React Render Method

* We've usually injected JSX code using curly braces, but we can use vanilla JS directly into the render method BEFORE THE RETURN STATEMENT  without the curly braces, and then call any variable we assign that vanilla JS to INSIDE the render method by using curly braces.  


```
// Issues with Lesson 40
1.  Hrrmmm, ok.  On the handleChange method what is 'e' and where does it come from.  
```


### Lesson 41: Render with an if/else condition

```
// Issues with lesson 41
1.  Lol, I had hard time keeping track of closing brackets/parens with this one.  
```


### Lesson 42: use && for a more concise conditional


```
// Issues with Lesson 42
1.  I think it would be useful to juxtapose what a traditional if statement looks like against the && operator, because the way that this is presented seems completely foreign to me.  
A.  The line of code: {condition && <p>markup</p>}, makes me think that I need to write { if (this.state.display) && <h1> Display </h1> }.  

```

### Lesson 43: Return null to prevent rendering

```
// Issues with Lesson 43: 
1.  This one makes sense now that I understand how properties work, and can remember that vanilla JS goes BEFORE the return statement
```

### Lesson 44: Ternary operator

* Ternary operators are possible because they can be written in JSX code(read: they can be written INSIDE THE RETURN STATEMENT) 

* Ternary operators are a shortcut for if/else statements

* 

			this.State = { 
      input: "",
        userAge: ""
      }
         this.state.userAge === '' ?
            buttonOne :
          this.state.userAge >= 18 ?
          buttonTwo : 
          buttonThree

```
// Issues with Lesson 44:
1.  There REALLY needs to be a refresher on ternary operators and what they look like here, especially if/when chaining them together.  
2.  I peeked at the solution code, reloaded the seed, and then spent a good 20 minutes trying to figure out how to duplicate a chained ternary operator, which I was able to do based off of [this stackoverflow post](http://stackoverflow.com/questions/6259982/how-do-you-use-the-conditional-operator-in-javascript)
```


### Lesson 45: Render Condtionally from props

```
// Issues with lesson 45: 
1.  Why is there after the lesson with ternary, a line of code showing what ternary is???? That seems REALLY out of place: 
(condition ? expr1 : expr2)
2.  This is the first lesson in a while where I felt like I had a tenuous, but OK grasp on things and was able to piece everything together to make it work, because the lessons seem to either fall in the category of IHaveNoIdeaWhatImDoing.jpg or Ok, I get what this is saying.
This lesson is a nice balance between those that made me struggle for a bit and feel accomplished when I saw that all the tests passed.  
3.  The seed is a let, but the solution is a const expression for Math.random()...which one is it?
```

### Lesson 46: Use Array.map to dynamically render elements

* Because we often don't know how many elements we may need to render, we can use Array.map() to solve this


```
// Issues with lesson 46
1.  The first sentence of the second paragraph in the intro seems strangely constructed:
"Let's let our example, in this case, be a simple..."
2.  An example/reminder of what array.map looks like would be helpful.  
3.  It took me about 10 minutes and [this page](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/map) to get to the solution, after wrestling around a bit on what needed to be mapped etc...
```
    

### Lesson 47: Use Array.filter to Dynamically filter an array



* Filter lets us dynamically create a new array based on some condition


```
// Issues with Lesson 47
1.  An example of a filter function in action would go a long way here to cutting down the time to work on something like this


2.  I'm curious as to why this code does not work for this challenge:

render() {
  	const filterUsers = this.state.users.filter( function(user) {
      return (user.online);
    });
  	const renderOnline =  this.state.users.map( function(user) {
      return (<p>{user.username}</p>)
    });
    return (
	   	<div>
	   		<h1>Current Online Users:</h1>
	   		{renderOnline}
	   	</div>
    );
  }
  ```



### Lesson 48: Render React on the Server with renderToString

* Normally we will be rendering components on the client, but we can also run JS on the server side with Node and since React is a view library we can totes do that.  

```
Issues with lesson 48:

1.  This one is quick and makes sense, the only thing I hesitated on was being used to using ReactDOM.render( <MyComponent />, document.getElementById('element')), because I though i would have to provide something to render to
```



