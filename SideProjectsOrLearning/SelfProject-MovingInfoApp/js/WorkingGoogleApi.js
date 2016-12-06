function loadData() {

// https://github.com/idavidmcdonald/minicourse-ajax-project/blob/master/js/script.js
    var $body = $('body');
    var $wikiElem = $('#wikipedia-links');
    var $wikiHeaderElem = $('#wikipedia-header');
    var $nytHeaderElem = $('#nytimes-header');
    var $nytElem = $('#nytimes-articles');
    var $greeting = $('#greeting');

    // clear out old data before new request
    $wikiElem.text("");
    $nytElem.text("");

    // Input variables
    var street = $('#street').val();
    var city = $('#city').val();
    var address = street + ', ' + city;

    // Greeting
    $greeting.text('So you want to live at ' + address + '?');

    // Background image
    var googleMapsBaseUrl = 'https://maps.googleapis.com/maps/api/streetview?size=600x400&location=';
    var googleMapsUrl = googleMapsBaseUrl + address;
    var backgroundImage = "<img class='bgimg' src='" + googleMapsUrl + "''>";
    $body.append(backgroundImage);

   return false;

 };

$('#form-container').submit(loadData);
// loadData();


