/* global angular */
(function() {
  "use strict";

  angular.module("app").controller("homeCtrl", function($scope, $http) {
    $scope.login = function(loginEmail, loginPassword, newLatitude, newLongitude) {
      var sessionParams = {email: loginEmail, password: loginPassword, latitude: newLatitude, longitude: newLongitude};
      $http.post("/login", sessionParams).then(function(response) {
        console.log("Success!");
      }, function(error) {
        console.log(error);
        $scope.errors = error.data.errors;
      });
    };
  $scope.mapInit = function() {
    $http.get("/api/v1/sessions.json").then(function(response) {
      $scope.sessions = response.data;
      var lmhq = {lat: 40.7091881, lng: -74.0122789};
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
  });

})();