### Redux Notes

## Lesson 1: Create a Redux Store

* Redux can be used w/ React and other F/W's.  

* Redux makes it soe that there is only one state object, even w/ multiple components

* The Redux store is an object which holds/manages the app state. 

* Redux provides a createStore() method, which we can use to create the Redux store.  

* The createStore() method takes a reducer function as a required argument, but we will learn about the reducer function later.  

* For now all you need to know is that the reducer argument takes state as an argument and returns state.  


```
const reducer = (state = 5) => {
	return state;
}

// Redux methods are available from a Redux object
// For example: Redux.createStore()
// Define the store here:
var store = Redux.createStore(reducer);
```


### Lesson 2: Get state of the Redux store

* We can retrieve state from the Redux store via several methods, but the most prevalent one is getState(), which returns the current state held in the Redux store.  


```
const store = Redux.createStore(
	(state = 5) => state
);

// change code below this line
console.log(store.getState(store));
```

### Lesson 3: Define a Redux Action

* To update state in Redux we have to trigger a dispatching action.  

* An action is a JS object which contains info about an event that has occurred, The Redux store recieves info about these action objects and updates state accordingly.  

* There are times a Redux action will carry a payload of data (e.g. a username), but not always.  

* Redux action MUST carray a type property that specifies the 'type' of action that occurred.  

```
// Define an action here:
var action = { type: 'LOGIN' }
```

### Lesson 4:  Define an Action Creator

* In Redux we declare action creators to send actions to the Redux store.  Action creators are JS functions which return actions.  

* Action creators (functions) create objects that return action events (objects)


Time: 2:14

```
const action = {
	type: 'LOGIN'
}
// Define an action creator here:
function actionCreator() {
 return action; 
}
```



### Lesson 5: Dispacth an Action event

* The method store.dispatch() is another method that we can use on the Redux store object.  

* To do this we use store.dispatch() and pass the value returned from an action creator (an object).  

```
const store = Redux.createStore(
	(state = {login: false}) => state
);

const loginAction = () => {
	return {
		type: 'LOGIN'
	}
};

// Dispatch the action here:
store.dispatch(loginAction());\
```
Time: 4:20

### Lesson 6: Handle an Action in the Store  

* We will write a reducer function to teach Redux store how to respond to actions.  

* Reducers in Redux are responsible for  state modifications that take place as a result of actions.  

* Reducers only take state and action as arguments, and will always return a new state, and does not do anything else.

* In Redux, state is read only which means that the reducer must always return a new copy of state, and not modify it directly.  


### Lesson 7


### Lesson 8

* In Redux we assign action types as read-only constatns and then refrence them when they are used.  Refactor the code, and write the actions as const decs

### Lesson 9: Register a Store listener

* Store.subscribe() allows us to subscribe listener functions to the store that will be called whenever an action is dispatched against the store.  

* One way to do this is to subscribe a function to the store that logs out a message everytime an action is recieved and the store is updated.  

### Lesson 10: Combine Multiple Reducers

* Since in Redux all app state is held in a single state object via the store, Redux provides us the Reducer composition to deal with a complex state model.  

* We can define multiple reducers to handle different parts of our apps state, and then compose the reducers together into one big reducer known as the root reducer

* The root reducer we feed into the Redux.createstore() method

* Redux provides combineReducers() in order to combine reducers.  

* It is best practice to create a reducer for each piece of app state that is distinct in some way.  

```
const INCREMENT = 'INCREMENT';
const DECREMENT = 'DECREMENT';

const counterReducer = (state = 0, action) => {
	switch(action.type) {
		case INCREMENT:
			return state + 1;
		case DECREMENT:
			return state - 1;
		default:
			return state;
	}
};

const LOGIN = 'LOGIN';
const LOGOUT = 'LOGOUT';

const authReducer = (state = {authenticated: false}, action) => {
	switch(action.type) {
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

const rootReducer = Redux.combineReducers({
count: counterReducer,
  auth: authReducer

})

const store = Redux.createStore(rootReducer);
```


### Lesson 11: Send Action Data to the Store

* So far we've only sent type data to the store, but it is very common to send data to the redux store.  




Next, finish writing the switch statement in the notesReducer(). We need to add a case that handles our addNoteText() actions. This case should be triggered whenever there is an action of type ADD_NOTE and it should just return the text property on the incoming action as the new state.



### Lesson 12: ussed middleware to handle Async Actions

* To handle Async actions Redux provides Thunk middleware, which we pass ass an argument to Redux.applyMiddleware(), which we provide as a second paramater to the createStore() function.  

* To create an async action we return a function in the action creator that takes dispatch as an argument, and within the function we can dispatch actions and perform async requests

// This section took the longest: 
```
To include Redux Thunk middleware, we pass it as an argument to Redux.applyMiddleware(), which we provide as a second optional parameter to our createStore() function. Take a look at the code in the editor to see this. Then, to create an asynchronous action, we return a function in our action creator that takes dispatch as an argument. Within this function we can dispatch actions and perform asynchronous requests.
```


```
const REQUESTING_DATA = 'REQUESTING_DATA'
const RECEIVED_DATA = 'RECEIVED_DATA'

const requestingData = () => { return {type: REQUESTING_DATA} }
const receivedData = (data) => { return {type: RECEIVED_DATA, users: data.users} }

const handleAsync = () => {
	return function(dispatch) {
		store.dispatch(requestingData());
		setTimeout(function() {
			let data = {
				users: ['Jeff', 'William', 'Alice']
			}
		  store.dispatch(receivedData(data))
		}, 2500);
	}
};

const defaultState = {
	fetching: false,
	users: []
};

const asyncDataReducer = (state = defaultState, action) => {
	switch(action.type) {
		case REQUESTING_DATA:
			return {
				fetching: true,
				users: []
			}
		case RECEIVED_DATA:
			return {
				fetching: false,
				users: action.users
			}
		default:
			return state;
	}
};

const store = Redux.createStore(
	asyncDataReducer,
	Redux.applyMiddleware(ReduxThunk.default)
);

```
Read intro: 4:47
Time: 12:28


### Lesson 13: Write a counter in Redux


const INCREMENT = 'INCREMENT';
const DECREMENT = 'DECREMENT';

const counterReducer = (state = 0, action) => {

			switch(action.type) {
        case INCREMENT:
          return state + 1;
 
        case DECREMENT: 
          return state - 1;
          
          case default:
          return state;               
   }
};
const incAction = () => {
return { type: INCREMENT }
};
const decAction =  () => {
return { type: DECREMENT }
};
const store = Redux.createStore(counterReducer);


### Lesson 14: Never Mutate State

* To make sure you don't mutate state, in the reducer you can use return state.concat(action.todo)

const ADD_TO_DO = 'ADD_TO_DO';

const immutableReducer = (state = ['Do not mutate state!'], action) => {
	switch(action.type) {
		case ADD_TO_DO:
			return state.concat(action.todo);
		default:
			return state;
	}
};

const addToDo = (todo) => {
	return {
		type: ADD_TO_DO,
		todo
	}
}

const store = Redux.createStore(immutableReducer);

### 15: Use the Spread operator

* The Spread operator has a variety of applications, including enforcing immutability.  

THe syntax is:
```
let newArray = [...myArray];

```

* With this newArray is a clone of myArray, so we can perform operations such as newArray.push() without affecting myArray

* We could also clone myArray and add new values with:

```
[...myArray, "hello world"]
or
[...state, action.todo]
```

* Note that the spread operator only works on single dimensonal arrays

### Lesson 16: Remove an item from an array

* here we can use the spread operator, slice, or concat


### Lesson 17: Copy an Object with Object.assign

* We can handle state as an object with object.assign() which takes a targe object and source objject and maps properties from the source objects to the target object.  

* Properties that match will be overwritten by properties in the source objects.

* If we write the method and pass an empty object as the first argument, this will be our target so we will assign and return a new object.  

* For instance:
```
const newObj = Object.assign({}, obj1, obj2);
```

* With the above code, newObj will be created and will contain whatever properties exist in obj1 and obj2


const immutableReducer = (state = defaultState, action) => {
	switch(action.type) {
		case ONLINE:

       return Object.assign({}, state,{status: 'online'} );
		default:
			return state;
	}
};


### Lesson 18: Use the spread operator with objects

* 


