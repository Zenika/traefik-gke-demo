'use strict';

const express = require('express')
const app = express()
const router = express.Router()

var COUNTER = 0

router.get('/', function (req, res) {
  res.send('Hello World ' + COUNTER++)
})

app.use('/api', router)

app.listen(3000, function () {
  console.log('Example app listening on port 3000!')
})
