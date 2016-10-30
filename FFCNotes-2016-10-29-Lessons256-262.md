
# FCC Notes Lessons256-262


## 2016-10-29


***

#### 256:  Trigger Click Events with jQuery


*  In this section, we'll learn how to get data from APIs. APIs - or Application Programming Interfaces - are tools that computers use to communicate with one another.  We'll also learn how to update HTML with the data we get from these APIs using a technology called Ajax.  First, let's review what the $(document).ready() function does. This function runs such that all of the code inside of it executes only once our page has finished loading.  So Let's start by implementing a click event handler inside of our $(document).ready() function by adding this code:

```

$("#getMessage").on("click", function(){

});

```

### Code: 

```HTML


<script>
  $(document).ready(function() {
    // Only change code below this line.
    
    $("#getMessage").on("click", function(){

});
    // Only change code above this line.
  });
</script>


<div class="container-fluid">
  <div class = "row text-center">
    <h2>Cat Photo Finder</h2>
  </div>
  <div class = "row text-center">
    <div class = "col-xs-12 well message">
      The message will go here
    </div>
  </div>
  <div class = "row text-center">
    <div class = "col-xs-12">
      <button id = "getMessage" class = "btn btn-primary">
        Get Message
      </button>
    </div>
  </div>
</div>




```

***
***

#### 257:  Change Text with Click Events


*  When our click event happens, we can use jQuery to update an HTML element.  Let's make it so that when a user clicks the "Get Message" button, we change the text of the element with the class message to say "Here is the message".   We can do this by adding the following code within our click event:

```

$(".message").html("Here is the message");

```


### Code: 

```HTML

<script>
  $(document).ready(function() {
    $("#getMessage").on("click", function(){
      // Only change code below this line.
      $(".message").html("Here is the message");
      // Only change code above this line.
    });
  });
</script>

```

***
***

#### 258:  Get JSON with the jQuery getJSON Method


*  You can also request data from an external source. This is where APIs come into play.  Remember that APIs - or Application Programming Interfaces - are tools that computers use to communicate with one another.  Most web APIs transfer data in a format called JSON. JSON stands for JavaScript Object Notation.  You've already been using JSON whenever you create a JavaScript object. JSON is nothing more than object properties and their current values, sandwiched between a { and a }.  These properties and their values are often referred to as "key-value pairs".  Let's get the JSON from Free Code Camp's Cat Photo API.  Once you've added this, click the "Get Message" button. Your Ajax function will replace the "The message will go here" text with the raw JSON output from the Free Code Camp Cat Photo API.

```
$.getJSON("/json/cats.json", function(json) {
  $(".message").html(JSON.stringify(json));
});
```


### Code: 

```HTML


<script>
  $(document).ready(function() {

    $("#getMessage").on("click", function(){
      // Only change code below this line.
      
      $.getJSON("/json/cats.json", function(json) {
  $(".message").html(JSON.stringify(json));
});
      
      // Only change code above this line.
    });   

  });
</script>


```

***
***

#### 259: 

* 


### Code: 

```Javascript



```

***
***

#### 260: 

* 


### Code: 

```Javascript



```

***
***

#### 261: 

* 


### Code: 

```Javascript



```

***
