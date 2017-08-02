angular.module 'starter.login'

.controller 'LoginCtrl', ($rootScope, $scope, $http, $authentication, $state) ->
  $scope.login = (user) ->
    user.email = "theo@bottlebooking.com";
    $authentication.login user
    .then (response) ->
      $http.defaults.headers.common = { access_token: response.data.id }
      $rootScope.user = user
      $state.go 'home', {username: user.username}

    .catch (err) ->
      console.log 'Error login failed', err
