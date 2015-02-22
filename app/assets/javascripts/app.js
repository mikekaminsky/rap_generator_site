rapGenerator = angular.module('rapGenerator', [])

rapGenerator.controller('rapController', ['$scope', '$http', function ($scope, $http) {
  $scope.name = 'hello world'
  $http.get('raps/new').success(function (data) {
    $scope.stanzas = data.stanzas;
  });
}]);
