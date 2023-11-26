var express = require('express')
var app = express()
 
app.get('/', function (req, res) {
   res.send('This is a basic Example for Express.js by TUTORIALKART')
})
 
var server = app.listen(3000)