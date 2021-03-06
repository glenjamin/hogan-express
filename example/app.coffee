express = require 'express'

app = express()

app.set('view engine', 'html')
app.set('layout', 'layout')
app.set('partials', head: "head")

#app.enable('view cache')

app.engine 'html', require('../hogan-express.coffee')
app.set('views', __dirname + '/views')

app.use(express.bodyParser())
app.use(app.router)

app.get '/', (req,res)->
  res.locals = what: 'World'
  res.render "index", partials: {temp: 'temp'}


app.listen(3000)