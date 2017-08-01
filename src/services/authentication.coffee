angular.module 'starter'

.service '$authentication', ($http) ->

  login: (credentials) ->
    $http
      method: 'POST',
      url: apiUrl + 'Customers/login',
      data: credentials
