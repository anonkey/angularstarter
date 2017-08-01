module.exports = (gulp, plugins) ->
  ->
    gulp.src './src/index.jade'
    .pipe plugins.plumber(errorHandler: plugins.notify.onError('Error: '))
    .pipe plugins.jade { pretty: true, doctype: 'html' }
    .pipe gulp.dest './www/'
