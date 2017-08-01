angular.module 'starter'

.filter 'date', ->
  (date, format) ->
    moment(date).format(format)
