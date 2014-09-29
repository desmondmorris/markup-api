express = require('express')
app     = express()

port = process.env.PORT || 4000

app.get '/', (req, res) ->
  console.log 'Request for: ' + req.url + ' (' + res.statusCode + ')'

  res.send 'Hello from Node.js!'

server = app.listen port, ->
  console.log 'Listening on port %d', server.address().port
