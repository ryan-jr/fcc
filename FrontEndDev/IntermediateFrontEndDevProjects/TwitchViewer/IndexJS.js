function twitchCall() {
  

  
  var arr = ['sodapoppin', 
         'day9', 
         'syndicate',
         'riotgames',
         'esl_csgo',
         'Nightblue3',
         'summit1g',        
        ]; 
   for ( var i = 0; i < arr.length; i++ ) { 
     var stuff = arr[i];
     //console.log("arr here: ", arr[i]);
   	$.ajax({
		url: "https://wind-bow.hyperdev.space/twitch-api/streams/" + arr[i] + "?callback=?",
		  type: 'GET',
      dataType: 'json',
		
		success: function(response) {
    
      console.log('success', response);
      
      
      var title = response['stream'];

      var name = arr.shift();
      //console.log("shift here: ", name);
      if ( title == null) {
      $("<h3>" + name +  " is offline" + "</h3>").appendTo(".infobox");
      } else {
        var link = response['_links']['channel'];
      var info = response['stream']['game']
        $("<h3>" + name + " is streaming: <p>" + info +" </p></h3>" + "<p><a href='" + link + "'> Link </a></p>" ).appendTo(".infobox");
        
      }
      }  
   
    })
     
 }
   //console.log(arr);
};

$('#online').click(function() {
  

  twitchCall();
 

 
});

