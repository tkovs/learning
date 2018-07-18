var http = require('http');

function handle(request, response)
{
    response.writeHead(200, {
        'Content-Type': 'text/html'
    });

    response.write("<!DOCTYPE html>");
    response.write("<html>");
    response.write("<head>");
    response.write("<meta charset='utf-8'>");
    response.write("<title>Resposta</title>");
    response.write("</head>");
    response.write("<body>");
    response.write("<h2>Página de resposta</h2>");
    response.write("</body>");
    response.write("</html>");

    response.end();
}

var server = http.createServer(handle);

server.listen(45000, function () {
    console.log('Server is listening at 45000 port');
});