/* global angular */
/* global gon */
(function() {
  "use strict";

  angular.module("app").controller("homeCtrl", function($scope, $http) {
    $scope.login = function(loginEmail, loginPassword) {
      console.log(navigator);
      console.log(navigator.geoLocation);
      navigator.geolocation.getCurrentPosition(function(position) {

        var sessionParams = {
          email: loginEmail, 
          password: loginPassword, 
          latitude: position.coords.latitude, 
          longitude: position.coords.longitude
        };
        $http.post("/api/v1/sessions", sessionParams).then(function(response) {
          console.log("Success!");
          console.log(response);
          console.log(response.data.id);
          var landingUrl = "/profiles/" + response.data.id;
          console.log(landingUrl);
          window.location.href = landingUrl;
        }, function(error) {
          console.log(error);
          $scope.errors = error.data.errors;
        });
      });
    };

  $scope.mapInit = function() {
    $http.get("/api/v1/sessions.json").then(function(response) {
      $scope.sessions = response.data;
      if (gon.latitude) {
        var lat = gon.latitude;
        var long = gon.longitude;
        var lmhq = {lat: gon.latitude, lng: gon.longitude};
      } else {
        var lat = 40.7091881;
        var long = -74.012284;
        var lmhq = {lat: 40.7091881, lng: -74.012284};
      }
      console.log(lmhq);
        var map = new google.maps.Map(document.getElementById('map'), {
          center: lmhq,
          zoom: 12
        });
        var address = "";
        console.log(gon.latitude);
        console.log(gon.longitude);
        $http.get("https://maps.googleapis.com/maps/api/geocode/json?latlng=" + lat + "," + long + "&key=AIzaSyDEaMIRxf3lBdpTcdDKT_RaN6jZWQjehWY").then(function(response) {
          console.log(response);
          address = response.data.results[0].formatted_address;
          console.log(address);
        });
        var infoWindow = new google.maps.InfoWindow({map: map, content: address});
        // var infowindow = new google.maps.InfoWindow({
        //   map: map,
        //   content: "Hello World"
        // });


        if (navigator.geolocation) {
          navigator.geolocation.getCurrentPosition(function(position) {
            var pos = {
              lat: position.coords.latitude,
              lng: position.coords.longitude
            };

            infoWindow.setPosition(pos);
            infoWindow.setContent(address);
            map.setCenter(pos);
          }, function() {
            handleLocationError(true, infoWindow, map.getCenter());
          });
        } else {
          // Browser doesn't support Geolocation
          handleLocationError(false, infoWindow, map.getCenter());
        }
      
        function handleLocationError(browserHasGeolocation, infoWindow, pos) {
            infoWindow.setPosition(pos);
            infoWindow.setContent(browserHasGeolocation ?
                                  'Error: The Geolocation service failed.' :
                                  'Error: Your browser doesn\'t support geolocation.');
        }

        var marker = new google.maps.Marker({
          position: lmhq,
          map: map,
          title: "Place"
        });
    });
  };
  // $scope.$window = $scope;
  });
})();