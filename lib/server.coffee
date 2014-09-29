express = require('express')
app     = express()

app.set 'views', './views'
app.set 'view engine', 'jade'

port = process.env.PORT || 4000

app.get '/', (req, res) ->
  console.log 'Request for: ' + req.url + ' (' + res.statusCode + ')'

  res.render 'index',
    title: 'Markup API Documentation'
    message: 'Hello!'

server = app.listen port, ->
  console.log 'Listening on port %d', server.address().port
