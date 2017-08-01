module.exports = (gulp, plugins) ->
  ->
    gulp.src './src/api.js'
    .pipe plugins.plumber(errorHandler: plugins.notify.onError('Error: '))
    .pipe gulp.dest './www/js'
