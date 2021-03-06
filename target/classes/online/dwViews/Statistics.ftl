<html>

	<head>
		<!-- Web page title -->
    	<title>Top Trumps</title>
    	
    	<!-- Import JQuery, as it provides functions you will probably find useful (see https://jquery.com/) -->
    	<script src="https://code.jquery.com/jquery-2.1.1.js"></script>
    	<script src="https://code.jquery.com/ui/1.11.1/jquery-ui.js"></script>
    	<link rel="stylesheet" href="https://code.jquery.com/ui/1.11.1/themes/flick/jquery-ui.css">

		<!-- Optional Styling of the Website, for the demo I used Bootstrap (see https://getbootstrap.com/docs/4.0/getting-started/introduction/) -->
		<link rel="stylesheet" href="http://dcs.gla.ac.uk/~richardm/TREC_IS/bootstrap.min.css">
    	<script src="http://dcs.gla.ac.uk/~richardm/vex.combined.min.js"></script>
    	<script>vex.defaultOptions.className = 'vex-theme-os';</script>
    	<link rel="stylesheet" href="http://dcs.gla.ac.uk/~richardm/assets/stylesheets/vex.css"/>
    	<link rel="stylesheet" href="http://dcs.gla.ac.uk/~richardm/assets/stylesheets/vex-theme-os.css"/>
    	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">

	</head>

    <body onload="initalize()"> <!-- Call the initalize method when the page loads -->
    	
    	<div class="container">

			<!-- Add your HTML Here -->
		
		</div>
		
		<script type="text/javascript">
		
			// Method that is called on page load
			function initalize() {
			
				getNumberOfGames();
				getNumberOfHumanwins();
				getNumberOfAiWins();
				getNumberOfAverageDraws();
				getNumberOfLongestRounds();
				
			}
			
			// -----------------------------------------
			// Add your other Javascript methods Here
			// -----------------------------------------
		
			// This is a reusable method for creating a CORS request. Do not edit this.
			function createCORSRequest(method, url) {
  				var xhr = new XMLHttpRequest();
  				if ("withCredentials" in xhr) {

    				// Check if the XMLHttpRequest object has a "withCredentials" property.
    				// "withCredentials" only exists on XMLHTTPRequest2 objects.
    				xhr.open(method, url, true);

  				} else if (typeof XDomainRequest != "undefined") {

    				// Otherwise, check if XDomainRequest.
    				// XDomainRequest only exists in IE, and is IE's way of making CORS requests.
    				xhr = new XDomainRequest();
    				xhr.open(method, url);

 				 } else {

    				// Otherwise, CORS is not supported by the browser.
    				xhr = null;

  				 }
  				 return xhr;
			}
		
		</script>
		
		<!-- Here are examples of how to call REST API Methods -->
		<script type="text/javascript">
		
			// This calls the helloJSONList REST method from TopTrumpsRESTAPI
			function getNumberOfGames() {
				var xhr = createCORSRequest('GET', "http://localhost:7777/toptrumps/numberGames"); // Request type and URL
				if (!xhr) {
					alert("CORS not supported");
				}
				xhr.send();
			}

			function getNumberOfHumanwins() {
				var xhr = createCORSRequest('GET', "http://localhost:7777/toptrumps/numberHumanWins"); // Request type and URL
				if (!xhr) {
					alert("CORS not supported");
				}
				xhr.send();
			}

			function getNumberOfAiWins() {
				var xhr = createCORSRequest('GET', "http://localhost:7777/toptrumps/numberAiWins"); // Request type and URL
				if (!xhr) {
					alert("CORS not supported");
				}
				xhr.send();
			}

			function getNumberOfAverageDraws() {
				var xhr = createCORSRequest('GET', "http://localhost:7777/toptrumps/numberOfAverageDraws"); // Request type and URL
				if (!xhr) {
					alert("CORS not supported");
				}
				xhr.send();
			}

			function getNumberOfLongestRounds() {
				var xhr = createCORSRequest('GET', "http://localhost:7777/toptrumps/longestRounds"); // Request type and URL
				if (!xhr) {
					alert("CORS not supported");
				}
				xhr.send();
			}


		</script>
		
		</body>
</html>