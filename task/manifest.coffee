module.exports = (gulp, plugins) ->
	->
		gulp.src [
			'./www/**/*.*'
		]
		
		.pipe plugins.manifest
			hash: true
			preferOnline: true
			network: [ '*' ]
			filename: 'app.manifest'
			exclude: 'app.manifest'

		.pipe gulp.dest('./www')