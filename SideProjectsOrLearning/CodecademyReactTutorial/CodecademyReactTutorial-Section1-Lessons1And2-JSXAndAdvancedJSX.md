# Codecademy React Tutorial Course 1 on JSX and Advanced JSX

* We use react because it's fast, scalable, and popular (e.g. employabilit)

* Hello world looks like so:

```React

var h1 = <h1> Hello World </h1>;

```

* Which looks like a strange mix of JS and HTML, but this would belong in a JS file.  The part that looks like HTML here the <h1> tags, is actually JSX.  

* JSX is a javscript extension for React, since browsers can't natively understand React, but they CAN understand JS.  React has to be complied into JS

* A    JSX element looks eactly like HTML except it would be found in a JS/JSX file such as app.js.  

* JSX elements are treated as JS expressions which means that JSX elements can go anywhere JS expressions can go.  JSX elements can be treated as variables, passed into functions, stored as an object, etc...

```React

var myArticle = <article> </article>;

```

* JSX elements can have attributes like HTML elements which conforms to the format of 

```React

name-goes-here="attribute-value-here"

<a href="http://www.yahoo.com">Welcome to the Yahoo</a>;

var title = <h1 id="title">Introduction to React.js: Part I</h1>;

var panda = <img src="images/panda.jpg" alt="panda" width="500px" height="500px" />;

var p1 = <p id="large"> foo </p>;
var p2 = <p id="small"> bar </p>;
```

* It's also possible to nest elements, and make it more readable in an HTML style.  

```React
(
<a href="https://www.google.net">
  <h1>
    Click me I am Goooogle
  </h1>
</a>
)
```

* By convention if a JSX expression takes up more than one line, we surround it in  parentisis ().  

* Note that JSX expressions can be saved as variables, passed to functions, etc... like so:


```React

 var theGoogle = (
   <a href="https://www.google.net">
     <h1>
       Click me I am Gooooooooooogle
     </h1>
   </a>
 );

 var myDiv = ( 
  <div> 
    
    <h1> Hello world </h1>
    
    </div>
  );

  * React has a weird quirk/rule that there can be only ONE outermost element in a JSX expression, which is another way of saying that the FIRST opening tag and the FINAL closing tag of a JSX expression MUST belong to the same element.  

  ```React

  // This WORKS

var paragraphs = (
  <div id="i-am-the-outermost-element">
    <p>I am a paragraph.</p>
    <p>I, too, am a paragraph.</p>
  </div>
);

// THIS DOES NOT WORK
var paragraphs = (
  <p>I am a paragraph.</p> 
  <p>I, too, am a paragraph.</p>
);

 ```

 * Note that this can lead to strange errors if you forget the rule/overlook it, but what you can do to get around the problem, is to wrap everything in the expression in a <div> </div>.  

 * Up to this point we've only written JSX elements, but we haven't rendered them to the browser, to render expressions to the browser we need to use the render method.  

 ```

 // renders hello world to the browser

var React = require('react');
var ReactDOM = require('react-dom');

// Copy code here:
ReactDOM.render( <h1> Hello world </h1>, document.getElementById('app'));

```

* ReactDOM is the name of the JS library that has React methods which deal with the DOM, one of those methods is render.  

* the <h1> hello world </h1> is being passed as an argeument to render

* The second argument that is passed ( See that , there after the </h1> )  tells the HTML document what ID to APPEND the hello world to.  In this case we appended hello world to the HTML element that had the ID 'app'.  

* Remember that the first argument that render takes HAS to be a JSX expression, however this does not mean it literally HAS to be a JSX expression, as long as it EVALUATES to one, meaning that it could be a variable that evaluates to a JSX expression


```React

var toDoList = (
  <ol>
    <li>Learn React</li>
    <li>Become a Developer</li>
  </ol>
);

ReactDOM.render(
  toDoList, 
  document.getElementById('app')
);
```

* React's render will ONLY UPDATE DOM ELEMENTS THAT HAVE CHANGED, which means that if you render the same thing twice, the DOM will only update once, meaning:


```React

var hello = <h1>Hello world</h1>;

// This will add "Hello world" to the screen:

ReactDOM.render(hello, document.getElementById('app'));

// This won't do anything at all:

ReactDOM.render(hello, document.getElementById('app'));

```

* Most Frameworks update the DOM more than they need to, but since websites often use DOM manipulation, too much of it can lead to inefficency.  

* In react for every DOM object there is a corresponding virtual DOM which is a representation or a lightweight copy of the DOM object which has the same properties as the DOM object, but lacks the power of the actual DOM object to change things on screen.  

* This is actually very efficent because React compares the virtual DOM with a virtual DOM snapshot that was taken just before the update, and figures out what, if any, objects have changed ( known as 'diffing' ).  

* Once React figures out which DOM objects have changed/updated it will update only those objects on the real DOM.  

* In summary, here's what happens when you try to update the DOM in React: The entire virtual DOM gets updated.  Then the virtual DOM gets compared to what it looked like before you updated it. React figures out which objects have changed.  Then The changed objects, and the changed objects only, get updated on the real DOM. Finally, changes on the real DOM cause the screen to change.

## Section 2: Advanced JS

* React has some quirks, for instance with JSX elements you can't use the word class you rather have to use className like so:

```React 

<h1 className="big"> Hello </h1> 
```

* This is because since React is compiled into JS, JS uses class as a reserved keyword.  Anytime you use className in JSX though, it is rendered as a class attribute.  

* Another quirk that JSX has is that if use an <img> or a <br> tag (or any other tag that generally does not close with a </tag> ) it will raise an error.  To fix this in JSX/React you use a /> to close the tag instead. 

```React

// How to close tags in react
<img src="google.com" />
<input type="text" className="username" />
<br/>


var profile = (
  <div>
    <h1>I AM JENKINS</h1>
    <img src="images/jenkins.png" />
    <article/>
      I LIKE TO SIT
      <br/>
      JENKINS IS MY NAME
      <br/>
      THANKS HA LOT
    <article/>
  </div>
);


* you can also run standard JS in a JSX file like so: 

```React

var React = require('react');
var ReactDOM = require('react-dom');

//2+3 will appear as a string, since it is located between the h1 tags
ReactDOM.render( <h1>{2+3}</h1>), document.getElementById('app')
);

```

* In order for React/JSX to treat the 2+3 as actual JS we need to wrap the statment in curly braces { }, after which everything within those braces will be treated as JS.  

```React


//2+3 will appear as a string, since it is located between the h1 tags
ReactDOM.render( <h1>2+3</h1>), document.getElementById('app')
);

``` React

var React = require('react');
var ReactDOM = require('react-dom');

// Resulsts in the DOM displaying: 2 + 3 = 5
var math =  <h1> 2 + 3 = {2 + 3} </h1>
      

ReactDOM.render( math, document.getElementById('app'))



```

* Because JS is a part of JSX it means that you can access variables while inside a JSX expression, even if those variables were declared outside of the expression.  

```React

var React = require('react');
var ReactDOM = require('react-dom');

var theBestString = 'tralalalala i am da best';

ReactDOM.render( <h1> {theBestString} </h1>, document.getElementById('app'));

```

* With react you can use variables and Object properties to set attributes

```React 

// For example:

var sideLength = "200px";

var panda = (
  <img 
    src="images/panda.jpg" 
    alt="panda" 
    height={sideLength} 
    width={sideLength} />
);

// and Also:
var pics = {
  panda: "http://bit.ly/1Tqltv5",
  owl: "http://bit.ly/1XGtkM3",
  owlCat: "http://bit.ly/1Upbczi"
}; 

var panda = (
  <img 
    src={pics.panda} 
    alt="Lazy Panda" />
);

var owl = (
  <img 
    src={pics.owl} 
    alt="Unimpressed Owl" />
);

var owlCat = (
  <img 
    src={pics.owlCat} 
    alt="Ghastly Abomination" />
);

```



* JSX elements can have listeners which are provided via special attributes such as onClick or onMouseOver.  For example:

```React 


<img onClick={myFunc} />
```

* The word on + EventName is the context for the keywords...and there are a lot of them as listed [here](https://facebook.github.io/react/docs/events.html#supported-events).  

* the value that an event listener evalutes to should be a function which would look like: 


```React

function myFunc () {
  alert('Make myFunc the pFunc... omg that was horrible i am so sorry');
}

<img onClick={myFunc} />
```


```React

var React = require('react');
var ReactDOM = require('react-dom');

function makeDoggy (e) {
  // Call this extremely useful function on an <img>.
  // The <img> will become a picture of a doggy.
  e.target.setAttribute('src', 'https://s3.amazonaws.com/codecademy-content/courses/React/react_photo-puppy.jpeg');
  e.target.setAttribute('alt', 'doggy');
}

var kitty = (
	<img onClick={makeDoggy}
		src="https://s3.amazonaws.com/codecademy-content/courses/React/react_photo-kitty.jpg" 
		alt="kitty" />
);

ReactDOM.render( kitty, document.getElementById('app'));
```

* Despite being complied into JS, JSX files don't allow for conditionals within curly braces, they would break the code E.g. the following is not allowed:

```React
(
  <h1>
    { if (purchase.complete) 'Thank you for placing an order!' }
  </h1>
)
```

* A way to get around conditionals breaking React is to use if/else outside of JSX tags.  

```React

if (user.age >= drinkingAge) {
  var message = (
    <h1>
      Hey, check out this alcoholic beverage!
    </h1>
  );
} else {
  var message = (
    <h1>
      Hey, check out these earrings I got at Claire's!
    </h1>
  );
}


// Notice how we pass message as the first argument

ReactDOM.render(
  message, 
  document.getElementById('app')
);

```

* Another way to get around JSX not really liking conditionals is to use the ternary operator.  



```

if( user <= 21 ) {
  serveGrapeJuice();
}
else {
  serveWine();
}
This can be shortened with the ?: like so:

 user <= 21 ? serveGrapeJuice() : serveWine();

```

* With a ternary operator if the operation evaluates to True, then serveGrapeJuice() will be executed.  If the operation evaluates to false, serveWine(), will be executed.  

* Another example:


```

var React = require('react');
var ReactDOM = require('react-dom');

function coinToss () {
  // Randomly return either 'heads' or 'tails'.
  return Math.random() < 0.5 ? 'heads' : 'tails';
}

var pics = {
  kitty: 'https://s3.amazonaws.com/codecademy-content/courses/React/react_photo-kitty.jpg',
  doggy: 'https://s3.amazonaws.com/codecademy-content/courses/React/react_photo-puppy.jpeg'
};

// Notice how they use object notation here with pics
var img = <img src={pics[ coinToss() == 'heads' ? 'kitty' : 'doggy']} />;

ReactDOM.render(
	img, 
	document.getElementById('app')
);



* Another way to write conditionals is the && operator, which is best for situations in which sometimes perform an action, but other times do nothing at all for example: 

```React

var tasty = (
  <ul>
    <li>Applesauce</li>
    { !baby && <li>Pizza</li> }
    { age > 15 && <li>Brussels Sprouts</li> }
    { age > 20 && <li>Oysters</li> }
    { age > 25 && <li>Grappa</li> }
  </ul>
);

```


* For creating a list of JSX elements we often use .map which can look somewhat strange at first.  

```React

var strings = ['Home', 'Shop', 'About Me'];

var listItems = strings.map(function(string){
  return <li>{string}</li>;
});

<ul>{listItems}</ul>


// What's happening here
// 1.  We set up the array strings
// 2.  We set up the variable list items which has the map method called on it.  
// 3.  In the map method we call a function which is passed string, and returns a JSX element.  

// Another example of using map:

var React = require('react');
var ReactDOM = require('react-dom');

var people = ['Rowe', 'Prevost', 'Gare'];

var peopleLIs = people.map(function(person){
  // return statement goes here:
		return <li>{person}</li>;
});

// ReactDOM.render goes here:
ReactDOM.render( <ul>{peopleLIs}</ul>, document.getElementById('app'));

```

* If you want a list to be in a specific order with React, you need to use keys. 

* A key is a JSX attribute, and it's value should be something unique such as and ID number, for example:

```React

<ul>
  <li key="li-01">Example1</li>
  <li key="li-02">Example2</li>
  <li key="li-03">Example3</li>
</ul>

```

* Keys are used server side to keep track of lists, and should be used in the following instances:following are true:

```

1.  The list-items have memory from one render to the next. For instance, when a to-do list renders, each item must "remember" whether it was checked off. The items shouldn't get amnesia when they render.

2.  A list's order might be shuffled. For instance, a list of search results might be shuffled from one render to the next.

```

* The following is an example of how to dynamicaly generate unique key numbers from an array:

```

var React = require('react');
var ReactDOM = require('react-dom');

var people = ['Rowe', 'Prevost', 'Gare'];


// Notice the ,i here.  From W3 schools, this is an optional argument that provides the index in the array.  

var peopleLIs = people.map(function(person, i){
  // return statement goes here:
		return <li key={ 'person_' + i }>{person}</li>;
});

// ReactDOM.render goes here:
ReactDOM.render( <ul>{peopleLIs}</ul>, document.getElementById('app'));




