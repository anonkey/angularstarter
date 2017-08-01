angular.module 'starter'

.directive 'loader', ->
  restrict: 'E',
  templateUrl: 'loader.html'
  replace: true
  transclude: true
