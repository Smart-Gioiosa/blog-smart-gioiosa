
		 function initMap() {

		        // Create a new StyledMapType object, passing it an array of styles,
		        // and the name to be displayed on the map type control.
		        var styledMapType = new google.maps.StyledMapType(
					[
					  {
						"featureType": "water",
						"elementType": "geometry.fill",
						"stylers": [
						  {
							"color": "#65ac4c"
						  }
						]
					  }
					],
		            {name: 'Styled Map'});

		        // Create a map object, and include the MapTypeId to add
		        // to the map type control.
				
		        var map = new google.maps.Map(document.getElementById('map'), {
		          center: {lat: 38.165083, lng: 14.850501},
		          zoom: 9,
				  scrollwheel: false,
				   icon: 'assets/images/map-icon.png',
		          mapTypeControlOptions: {
		            mapTypeIds: ['roadmap', 'satellite', 'hybrid', 'terrain',
		                    'styled_map']
		          }
				  
		        });
			var myLatlng = new google.maps.LatLng(38.165083, 14.850501);		
			var marker = new google.maps.Marker({
				position: myLatlng,
				icon: "assets/images/home01/map-icon.png",
				title:"Hello World!"
			});	
			marker.setMap(map);		

		        //Associate the styled map with the MapTypeId and set it to display.
		        map.mapTypes.set('styled_map', styledMapType);
		        map.setMapTypeId('styled_map');
		}

