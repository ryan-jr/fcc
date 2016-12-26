### Redux Issues

## Lesson 1: No issues.  Time: 2:05

## Lesson 2: No issues: Time: 1:40

## Lesson 3: No issues.  Time: 2:02

## Lesson 4: No issues.  Time: 2:14

## Lesson 5: Time: 4:20 A bit jargon heavy, but given what's happening, I think that is somewhat inevitable/avoidable.  The sentence 
```
 Remember when we introducted store.getState() as a method provided on the Redux store object and mentioned that there are other methods provided as well? 
 ```
Seems unneccessary and potentially overcomplicates things and could be elimanated/replaced with:
```
The method store.dispatch(), is another method that we can use on the store object, and is what we will use to dispatch actions to the Redux store.
```

### Lesson 6: 

```
18:54 update:

Ok, so I can get 4/5 tests to pass.

1.  Your code was transpiled correctly: Pass
2.  Calling the function loginAction returns an object with type property set to the string 'Login': Pass
3.  The store is initilaized with an object with property login set to false: Pass
4.  Dispatching loginAction updates the login property in the store's state to true: Fail
5.  If the action is not of type 'LOGIN' the store returns the current state: Pass

// I'll keep working on this for another 10 minutes, if I can't get it to pass, then I will try the solution code.  

      
      // wanted to return {login: true} directly
      // updated to: return state =  
      // state = action.type({login: true})

```


```
Time: 32:43 after looking at the solution

// Hrrmmmm ok I was close.  This was the code I put in for the problem:
if(action=='LOGIN'){
      
      // wanted to originally return {login: true} directly
      // updated to: return state = {login: true}, got 4/5
      // state = action.type({login: true}) after 18 mins...nothing
      // also attempted: return action.type({login: true}) 28:42
      // 
      return action.type({login: true})
      
    } else {
      
      return state
      
    }

//but the problem was with action and action.type.  I'll be honest and say I don't know how to make it so that people know that they should use action.type in the if statement more clear.  
```


### Lesson 7: Use a switch statement to handle multiple actions

Time: 8:27

// This one took me so long because I had to look up how to write a switch statement, and after about 5 minutes I realized I had put the :'s isn the wrong place.  



### Lesson 8: Use const for action types

Time: 4:24

This one took me a bit longer because I wrapped the const(s) LOGIN and LOGOUT in " " rather than ' ' as the tests asked for.  


```
const LOGIN = 'LOGIN';
const LOGOUT = 'LOGOUT';

const defaultState = {
	authenticated: false
};

const authReducer = (state = defaultState, action) => {

	switch (action.type) {

		case LOGIN:
			return {
				authenticated: true
			}

		case LOGOUT:
	 		return {
				authenticated: false
			}

		default:
			return state;

	}

};

const store = Redux.createStore(authReducer);
 
const loginUser = () => {
	return {
		type: LOGIN
	}
};

const logoutUser = () => {
	return {
		type: LOGOUT
	}
};
```

Lesson 9: Register a Store Listener

Time: 3:48

No issues here, just took a little time to decipher what these two sentences meant in the Intro:

```
This allows us to subscribe listener functions to the store which will be called whenever an action is dispatched against the store. One simple use for this method is to subscribe a function to your store which simply logs out a message everytime an action is received and the store is updated. 
```


Lesson 10:  Combine Multiple Reducers

Time: 7:07.  

// This one is a lot of jargon to proccess and decompress

Within the instructions the following sentences are the most obfuscacious:

```
We've started the rootReducer() for you, it's your job to finish it! The combineReducers() method, available on the Redux object, requires an object as an argument in which you pass reducers mapped to property names. The names of these properties will become the names of the keys in the state object for the state managed by that reducer.
```


Lesson 11: Send Action Data to the Store

// The struggle with this one was not due to the addNoteText creator, but rather with the notesReducer.  

```
const notesReducer = (state = 'Initial State', action) => {
	switch(action.type) {
		// change code below this line
    case ADD_NOTE: 
      return {text: state}
      break;
		// change code above this line
		default:
			return state;
	}
};

```

Solution Code:
const notesReducer = (state = 'Initial State', action) => {
	switch(action.type) {
		// change code below this line
		case ADD_NOTE:
			return action.text;
		// change code above this line
		default:
			return state;
	}
};


Time: 10:38


### Lesson 12: Use Middleware to handle Async calls

Read intro: 4:47
Time: 12:28

// This one took me a while because I couldn't remember how to perform dispatch calls.  

### Lesson 13: Write a counter with Redux

# Time: 19:21 

* Syntax errors are the bane of my exsistance...

### Lesson 14:  Never Mutate State
TIme: 22:15

* Yeah, I even after looking at the Array methods, and searching around StackOverflow for ~15 minutes, I was still lost on how to return a new array, between slice, concat, spread, etc... mostly on the syntax of it.  Eventually I gave up and tried either return state.append(action.todo) and state.slice(0), etc... 

### Lesson 15: Never Mutate State

Time: 3:51.

// This one made sense, but makes me wonder why I had to struggle through lesson 14.  


### Lesson 16: Remove Item from an Array

Time: 7:50

// This one I had to find using Stackoverflow, but there is probably very little chance I would have figured it out within 10 minutes otherwise.  

### Lesson 17:

Time: 17:22

// I had to go back and forth on the solution code on this
but the test calls for:
```
Dispatching an action of type 'ONLINE' updates the property 'status' in state to 'online' and returns a new state object.
```

Which would seem to imply return a status with an all caps string (also implied by the const), however only a lowercase string like so:
```
return Object.assign({}, state,{status: 'online'} );
```

Is accepted for the status and a passing test.  

### Lesson: 18 

Same issues as before between lowercase and uppercase
```
			return Object.assign({...state, status:'online'})

```
The above is accepted/passing, while
```
			return Object.assign({...state, status:'ONLINE'})


```

Is not, which would seem to indicate a need to update the test to better reflect what the string should be

Time: 4:23

