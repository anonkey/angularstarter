angular.module 'starter.login'

.controller 'LoginCtrl', ($scope, $http, $authentication) ->
  $scope.login = (user) ->
    user.email = "theo@bottlebooking.com";
    $authentication.login user
    .then (response) ->
      $http.defaults.headers.common = { access_token: response.data.id }

    .catch (err) ->
      console.log 'Error login failed', err
