#!/bin/bash

echo 'username='$username >> /etc/environment
source /etc/environment

cat >fasty.js <<ENDOFCONTENT
var http = require('http');
var username = process.env.username || 'world';
http.createServer(function (req, res) {
  res.write('Hello ' + username);
  res.end(); 
}).listen(3000, function(){
 console.log("New Example app listening on port 3000!"); 
});
ENDOFCONTENT

