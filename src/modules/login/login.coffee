angular.module 'starter.login', ['starter.home']

.config ($stateProvider) ->

  $stateProvider.state 'login',
    url: '/login',
    templateUrl: 'login.html',
    controller: 'LoginCtrl'
