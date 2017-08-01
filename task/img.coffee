module.exports = (gulp, plugins) ->
  ->
    gulp.src './src/img/**'
    .pipe plugins.plumber(errorHandler: plugins.notify.onError('Error: '))
    .pipe gulp.dest './www/img'
