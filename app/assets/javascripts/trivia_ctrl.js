/* global angular */
(function() {
  "use strict";

  angular.module("app").controller("triviaCtrl", function($scope, $http, $timeout, $window) {
    $scope.setup = function(gameId, wagerId) {
      $http.get("/api/v1/trivia.json").then(function(response) {
        $scope.questions = response.data;
        $scope.currentQuestion = 0;
        $scope.maxQuestions = $scope.questions.length;
        $scope.userScore = 0;
        $scope.gameId = gameId;
        $scope.wagerId = wagerId;

        $timeout(function() {
          $scope.endOfGame();
        }, 60000);
      });
    };

    $scope.answerQuestion = function(answer) {
      console.log(answer.correct);
      if (answer.correct) {
        $scope.userScore += 1;
      }
      $scope.currentQuestion += 1;
      if (($scope.currentQuestion + 1) === $scope.maxQuestions) {
        $scope.endOfGame();
      }
    };

    $scope.endOfGame = function() {
      $scope.currentQuestion = null;
      // $scope.message = "Game over. Your score is " + $scope.userScore;
      // insert some logic that determines if this is competitor score or challenger score...
      var scoreParams = {
        competitorScore: $scope.userScore
      };
      $http.patch("/api/v1/games/" + $scope.gameId, scoreParams).then(function(response) {
        $window.location.href = "/wagers/" + $scope.wagerId;
      });
    };

    window.$scope = $scope;
  });

})();