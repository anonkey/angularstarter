angular.module 'starter.login', []
.config ($stateProvider) ->
  $stateProvider.state 'login',
    url: '/login',
    templateUrl: 'login.html',
    controller: 'LoginCtrl'
