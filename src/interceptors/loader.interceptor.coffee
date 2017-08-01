angular.module 'starter'

.factory 'loader', ($rootScope, $q) ->

  request: (config) ->
    $rootScope.loading = true
    config
  response: (response) ->
    $rootScope.loading = false
    $q.resolve response
  requestError: (err) ->
    $q.reject err
  responseError: (err) ->
    if err.status is 401
      window.location.href = 'http://auth.faste.ai'
    $q.reject err
