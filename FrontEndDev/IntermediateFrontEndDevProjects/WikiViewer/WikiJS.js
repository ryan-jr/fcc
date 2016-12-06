function wikiCall() {
  
  var query = $('#search').val();
   	$.ajax({
		url: 'https://en.wikipedia.org/w/api.php?action=opensearch&search=' + query + '&format=json&callback=?',
		  type: 'GET',
      dataType: 'json',
		
		success: function(response) {
    
      console.log('success', response);
      
 var title = response[0];
      
           $("<h3> Results for: " + title + "</h3>").appendTo("#searchtext");
      i = 1;
      while (  i < 2 ) {
      for( j = 0; j < response[i].length; j++) {
        
        var header = response[i][j];
        var descrip = response[i + 1][j];
        var link = response[i + 2][j];
              
         $("<h4>" + header +  "</h4>" + "<p>" + descrip + "</p>" + "<p>" + '<a href="' + link + '">Link</a>' + "</p>" + "<hr>" + "</hr>" ).appendTo("#info");
        
      } 
      i++;
      
      }  
    
    }
      
		
		});
}



function randCall() {
  

   	$.ajax({
		url: 'https://en.wikipedia.org/w/api.php?format=json&action=query&generator=random&grnnamespace=0&prop=revisions|images&rvprop=content&grnlimit=1&callback=?',
		  type: 'GET',
      contentType: "application/javascript; charset=utf-8",
      dataType: 'json',
		
		success: function(response) {
    
      console.log('success', response);
    
      $(response).appendTo("#searchtext");
      } 
      
		
		});
}

$('#searchbtn').click(function() {
  
  $("div").empty();
  wikiCall();
 

 
});

$('#randbtn').click(function() {
  randCall();
  $('body').append("randCall");

 
});