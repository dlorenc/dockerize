var express = require('express')
var app = express()

app.get('/', function (req, res) {
  res.send('Hello, Dockerized World!')
})

var server = app.listen(8080, function () {

  var host = server.address().address
  var port = server.address().port

  console.log('Dockerize app listening at http://%s:%s', host, port)

})