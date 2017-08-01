angular.module 'starter.login'

.controller 'LoginCtrl', ($scope, $http) ->
  $scope.login = (user) ->
    user.email = "theo@bottlebooking.com";
    console.log user
    $http({
      method: 'POST',
      url: apiUrl + 'Customers/login',
      data: user
      })
      .then (response) ->
        console.log 'success', response
        $http.defaults.headers.common = { access_token: response.data.id }

      , (response) ->
        console.log 'fail', response
  console.log 'Login'
