var http = require('http');
var handle = require('./handle');
require('console-log-hello-world');

var server = http.createServer(handle.fn);

server.listen(3000, function () {
    console.log('Server is listening at 3000 port');
});