module.exports = (gulp, plugins) ->
  ->
    gulp.src './src/**/*.jade'
    .pipe plugins.plumber(errorHandler: plugins.notify.onError('Error: <%= error.message %>'))
    .pipe plugins.flatten()
    .pipe plugins.jade { pretty: true, doctype: 'html' }
    .pipe plugins.angularTemplatecache('templates.js', { module: 'starter' })
    .pipe gulp.dest './www/js'
