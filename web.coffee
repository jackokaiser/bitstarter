express = require "express"
fs = require "fs"
url = require "url"

app = express()
app.use express.logger()
app.use express.static __dirname + '/public'

publicFiles = [
        "about",
        "home",
        "contact",
        "projects",
        "raytracer"
]


app.get '/' , (request,response) ->
        buffer=fs.readFileSync "index.html"
        response.send buffer.toString()



port = process.env.PORT || 8080

app.listen port, ->
        console.log("Listening on " + port);
