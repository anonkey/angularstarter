apiUrl = 'http://developers.faste.ai/api/'
angular.module 'starter', [
  'ionic',
  'starter.login'
]

.config ($urlRouterProvider, $httpProvider) ->
  $httpProvider.interceptors.push 'loader'
  $urlRouterProvider.otherwise '/login'

.run ->
  console.log("angular setup")
