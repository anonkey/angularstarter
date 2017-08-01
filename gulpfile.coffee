gulp            = require 'gulp'
plugins         = require('gulp-load-plugins')()

getTask = (name) -> require("./task/#{name}")(gulp, plugins)

gulp.task 'index', getTask 'index'
gulp.task 'jade', getTask 'jade'
gulp.task 'less', getTask 'less'
gulp.task 'pages', getTask 'pages'
gulp.task 'coffeescript', getTask 'coffeescript'
gulp.task 'img', getTask 'img'
gulp.task 'copy', getTask 'copy'
gulp.task 'vendors', getTask 'vendors'
gulp.task 'icon', getTask 'icon'
gulp.task 'manifest', getTask 'manifest'

gulp.task 'minify:css', getTask 'minify-css'
gulp.task 'minify:js', getTask 'minify-js'

gulp.task 'build', [
  'index'
  'icon'
  'jade'
  'less'
  'coffeescript'
  'img'
  'copy'
  'vendors'
]

gulp.task 'watch', ['build'],  ->
  gulp.watch ['../../server/**/*', '../../common/**/*'], ['api']
  gulp.watch './src/index.jade', ['index']
  gulp.watch './src/**/*.coffee', ['coffeescript']
  gulp.watch './src/**/*.less', ['less']
  gulp.watch './src/**/*.jade', ['jade']

gulp.task 'minify', [
  'minify:css'
  'minify:js'
]
