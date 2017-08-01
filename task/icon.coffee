module.exports = (gulp, plugins) ->
	->
		gulp.src './src/img/svg/*.svg'

		.pipe plugins.iconfontCss

			fontName: 'bottlebooking'
			targetPath: 'bottlebooking.css'
			fontPath: ''
			cssClass: 'bb-icon'

		.pipe plugins.iconfont
			fontName: 'bottlebooking'
			centerHorizontally: true
			normalize: true
			prependUnicode: true

		.pipe gulp.dest './www/css'
