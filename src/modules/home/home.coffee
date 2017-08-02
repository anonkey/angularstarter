angular.module 'starter.home', []

.config ($stateProvider) ->

  $stateProvider.state 'home',
    url: '/user/:username',
    templateUrl: 'home.html'
    controller: 'HomeCtrl'
