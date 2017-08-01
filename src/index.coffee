apiUrl = 'http://developers.faste.ai/api/'
angular.module 'starter', [
  'ionic',
  'starter.login'
]

.config ($urlRouterProvider) ->
  $urlRouterProvider.otherwise '/login'

.run ->
  console.log("angular setup")
