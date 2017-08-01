module.exports = (gulp, plugins) ->
  ->
    gulp.src './pages/**/*'
    .pipe plugins.plumber(errorHandler: plugins.notify.onError('Error: '))
    .pipe gulp.dest './www/pages/'
