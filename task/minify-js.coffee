module.exports = (gulp, plugins) ->
  ->
    gulp.src './www/js/app.js'
    .pipe plugins.plumber(errorHandler: plugins.notify.onError('Error: <%= error %>'))
    .pipe plugins.ngAnnotate
    	add: true
    .pipe plugins.uglify()
    .pipe plugins.concat 'app.min.js'
    .pipe gulp.dest './www/js'
