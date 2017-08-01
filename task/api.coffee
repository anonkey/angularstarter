module.exports = (gulp, plugins) ->
  ->
    gulp.src '../../server/server.js'
    .pipe plugins.loopbackSdkAngular()
    .pipe plugins.rename 'api.js'
    .pipe gulp.dest './src'
