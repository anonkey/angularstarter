module.exports = (gulp, plugins) ->
	->
		gulp.src "./electron.coffee"
		.pipe plugins.plumber(errorHandler: plugins.notify.onError('Error: <%= error %>'))
		.pipe plugins.coffee { bare: true }
		.pipe plugins.concat 'index.js'
		.pipe gulp.dest "./www/"
