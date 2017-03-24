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
      console.log(gon.latitude);
      console.log(gon.longitude);
      if (gon.latitude) {
        var lmhq = {lat: gon.latitude, lng: gon.longitude};
      } else {
        var lmhq = {lat: 40.7091881, lng: -74.0122789};
      }
      console.log(lmhq);
        var map = new google.maps.Map(document.getElementById('map'), {
          center: lmhq,
          zoom: 12
        });
        var infoWindow = new google.maps.InfoWindow({map: map});

        if (navigator.geolocation) {
          navigator.geolocation.getCurrentPosition(function(position) {
            var pos = {
              lat: position.coords.latitude,
              lng: position.coords.longitude
            };

            infoWindow.setPosition(pos);
            infoWindow.setContent('Location found.');
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
          map: map
        });
    });
  };
  // $scope.$window = $scope;
  });
})();