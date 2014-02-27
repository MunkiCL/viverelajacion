var express = require('express');
var port = process.env.PORT || 3000;
var app = express.createServer();

app.get('/',function(request,response){
	response.send_file(__dirname + '/dist/index.html');
}).configure(function(){
	app.use('/images',express.static(__dirname+'/dist/images'));
	app.use('/styles',express.static(__dirname+'/dist/styles'));
}).listen(port);
