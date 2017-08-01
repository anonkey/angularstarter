mainBowerFiles  = require 'main-bower-files'

module.exports = (gulp, plugins) ->
  ->
    files = mainBowerFiles
      paths:
        bowerJson: './bower.json'
        bowerDirectory: './www/lib'

    filter = plugins.filter '**/*.js'

    gulp.src files
    .pipe plugins.plumber(errorHandler: plugins.notify.onError('Error: '))
    .pipe filter
    .pipe plugins.concat 'vendors.js'
    .pipe gulp.dest './www/js'
