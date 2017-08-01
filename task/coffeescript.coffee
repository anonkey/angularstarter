module.exports = (gulp, plugins) ->
  ->
    gulp.src './src/**/**/*.coffee'
    .pipe plugins.plumber(errorHandler: plugins.notify.onError('Error: <%= error %>'))
    .pipe plugins.coffee { bare: true }
    .pipe plugins.concat 'app.js'
    .pipe gulp.dest './www/js'
