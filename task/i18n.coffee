module.exports = (gulp, plugins) ->
  ->
    gulp.src './client/app/src/i18n/*.json'
    .pipe plugins.plumber(errorHandler: plugins.notify.onError('Error: '))
    .pipe gulp.dest './client/app/www/i18n'
