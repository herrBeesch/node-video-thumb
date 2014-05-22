exec = require('child_process').exec

module.exports =
	extract: (path, destPath, time = '00:00:01', size = '200x125', callback) ->
		exec 'ffmpeg  -i ' + path + ' -ss ' + time + ' -an -s ' + size + ' -f image2 ' + destPath, ->
			callback() if callback