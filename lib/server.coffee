express = require('express')
app     = express()

port = process.env.PORT || 4000

logRequest = (url, status) ->
  console.log 'Request for: ' + url + ' (' + status + ')'

app.get '/', (req, res) ->
  logRequest req.url, res.statusCode

  res.redirect 301, 'https://github.com/mmwtsn/markup-api#markup-api'

app.get '/api/v1/cloud.json', (req, res) ->
  logRequest req.url, res.statusCode

  res.header 'Content-Type', 'application/json'
  res.header 'Charset', 'utf-8'

  res.send
    hello: 'world'

server = app.listen port, ->
  console.log 'Listening on port %d', server.address().port
