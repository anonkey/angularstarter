angular.module 'starter.home'

.controller 'HomeCtrl', ($scope, $stateParams) ->
  $scope.connectedItems = [
    { name: 'salon', isOn: false, digitalValue: 0 },
    { name: 'cuisine', isOn: false, digitalValue: 0 },
    { name: 'sdb', isOn: false, digitalValue: 0 },
    { name: 'chambre', isOn: false, digitalValue: 0 },
    { name: 'terasse', isOn: false, digitalValue: 0 },
  ]
