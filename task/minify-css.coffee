module.exports = (gulp, plugins) ->
	->
		gulp.src 'www/css/app.css'
		.pipe plugins.cleanCss
			compatibility: 'ie8'
		.pipe gulp.dest 'www/css'
