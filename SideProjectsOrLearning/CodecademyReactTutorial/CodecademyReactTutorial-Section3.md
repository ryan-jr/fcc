# Codecademy React Tutorial Section 3 - Components Interacting

* Components can form complex ecosystems of data, and what makes React special is the way in which the components interact.  

* If you want to use a variable that is declared in another file in react, you have to import it  with 

```React

var NavBar = require('./NavBar.js');

```

* The above is taken from Node's version of require, and just like Node you can also use module.require

* You can use module.exports to get specifically what you want out of a file like so:

```

var faveManifestos = {
  futurist: 'http://bit.ly/1lKuB2I',
  SCUM:     'http://bit.ly/1xWjvYc',
  cyborg:   'http://bit.ly/16sbeoI'
};

// The following line will make the faveManifestos object available to another file
module.exports = faveManifestos;

// The following line will make the NavBar function available to another file
    module.exports = NavBar

    ```

    * Components can pass information to other components, the data that gets passed from one component to another is known as props.  

    * To pass information to a componenet you need to name the component, and you can pass different types of information like so through an attribute: 

    ```React

    // Passing a string
    <Example message="This is some top secret info." />

    // Passing an Array
    <Greeting myInfo={["top", "secret", "lol"]} />

    // Passing different types of data
    <Greeting name="Frarthur" town="Flundon" age={2} haunted={false} />

    // Notice that anything that is not a string is encased in { }

    ```

    ```React

    // An example of props in action

    var Greeting = React.createClass({
  render: function () {
    return <h1> Hi there, {this.props.firstName}! </h1>;
  }
});

// ReactDOM.render goes here:
ReactDOM.render(
  <Greeting firstName='Name' />, 
  document.getElementById('app')
);

```

* It is also possible to pass props from one component to the next
