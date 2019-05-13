#!/bin/bash

cat >fasty.js <<ENDOFCONTENT
var http = require('http');
http.createServer(function (req, res) {
  res.write('Faster Fasty Online');
  res.end(); 
}).listen(3000, function(){
 console.log("New Example app listening on port 3000!"); 
});
ENDOFCONTENT

