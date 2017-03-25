const rq = require('request');
const fs = require('fs')
const uri = `http://servIP:8080`
const form = {
	formData: {
		chat_id: 237799109,
		photo: {
			value: fs.createReadStream("files/photo.jpg"),
			options: {
			    filename: 'photo.jpg',
			    contentType: 'image/jpg'
			}
		}
	}
}

rq.post(uri, form, function(err, res, data) {
	if (err) console.log(err);
	else {
		console.log(data)
	}
})
