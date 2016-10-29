
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

#### 258: 

* 


### Code: 

```Javascript



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
