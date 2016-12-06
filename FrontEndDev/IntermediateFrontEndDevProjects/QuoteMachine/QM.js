function quoteCall(){

$("h2").empty();
  $("p").empty();
 $.ajax({
      url: "http://api.forismatic.com/api/1.0/",
      jsonp: "jsonp",
      dataType: "jsonp",
      data: {
        method: "getQuote",
        lang: "en",
        format: "jsonp"
      }, 
      success : function( parsed_json ) {
        
          var quote = parsed_json['quoteText'];
	var author = parsed_json['quoteAuthor'];
        var link = parsed_json['quoteLink']
        var $body = $('body');
        var $holder = $('#quoteholder')
        var quotation = '<p><center><h2>' + quote + '</h2></center></p>';
        var authorName = '<p>-' + author + '</p>';
        var pageLink = '<a href="' + link + '">Link</a>';
        $holder.append(quotation);
        $holder.append(authorName);
        $holder.append(pageLink);
      }
    })
    
}
  

  
$('#quotebtn').click(function() {
  
  $("#quoteholder").empty();
  quoteCall();
 
  
});

