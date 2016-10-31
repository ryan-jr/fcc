function loadData() {

// https://github.com/idavidmcdonald/minicourse-ajax-project/blob/master/js/script.js
    
    // setting the variables
    var $body = $('body');
    var $wikiElem = $('#wikipedia-links');
    var $wikiHeaderElem = $('#wikipedia-header');
    var $nytHeaderElem = $('#nytimes-header');
    var $nytElem = $('#nytimes-articles');
    var $greeting = $('#greeting');
    var street = $('#street').val();
    var city = $('#city').val();
    var address = street + ', ' + city;

    // clear out old data before new request
    $wikiElem.text("");
    $nytElem.text("");

    // Greeting
    $greeting.text('Here is information for: ' + address);
    $greeting.css('color', 'rgb(222,222,189)');

    // Background image
    var googleMapsBaseUrl = 'https://maps.googleapis.com/maps/api/streetview?size=400x200&location=';
    var googleMapsUrl = googleMapsBaseUrl + address;
    var backgroundImage = "<img class='bgimg' src='" + googleMapsUrl + "''>";
    $body.append(backgroundImage);


    // NYT data 
    var nytApiKey = 'b23ffdf4cc824f039def1f6d58a6a0e2';
    var nytApiUrl = 'http://api.nytimes.com/svc/search/v2/articlesearch';
    var nytUrl = nytApiUrl + '.json?api-key=' + nytApiKey + '&q=' + city;


    $.getJSON( nytUrl, function ( data ) {

            var docs = data.response.docs;

        $.each ( docs, function( key, val ) {

                var title = '<a href=" ' + val.web_url +' ">' + val.headline.main + '</a>';


                var leadPara = ' ';

                if (val.lead_paragraph) {

                        leadPara = '<p>' + val.lead_paragraph + '</p>'

                };

                var listItem = '<li class="article">' + title + leadPara + '</li>';

                $nytHeaderElem.text("New York Times Articles About..." + city);
                $nytElem.append(listItem);
                });
        }).fail(function(){

            $nytHeaderElem.text("NYT Articles could not be loaded")

    });



        // Wikipedia

    var wikiBaseUrl = 'http://en.wikipedia.org/w/api.php?format=json&action=opensearch&search=';
    var wikiUrl = wikiBaseUrl + city;


    $.ajax({
        url: wikiUrl,
        dataType: "jsonp",
        success: function(data){
            for (var i = 0; i <= data[1].length - 1; i++) {
                var pageLink = '<ul><a href="' + data[3][i] + '">' + data[1][i] + '</a></ul>';
                $wikiElem.append(pageLink);
            };

            clearTimeout(wikiRequestTimeout);
        }
    });


        
   return false;

 };

$('#form-container').submit(loadData);
// loadData();
