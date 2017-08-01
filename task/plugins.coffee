module.exports = (gulp, plugins) ->
  ->
    gulp.src './old_plugins/**/*'
    .pipe plugins.plumber(errorHandler: plugins.notify.onError('Error: '))
    .pipe gulp.dest './www/js/plugins'
