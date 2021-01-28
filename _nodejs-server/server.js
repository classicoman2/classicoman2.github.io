#!/usr/bin/env node

const express = require('express')
const app = express()
const path = require('path')

require('dotenv').config()


const port = process.env.PORT || 3000 

app.use(express.static("../_site"))

app.get("/", function (req, res) {
  res.sendFile(path.dirname(__dirname) + "/_site/index.html");
});

app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`)
})