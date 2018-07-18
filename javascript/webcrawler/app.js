var cheerio = require('cheerio');
var request = require('request');
var port = 8080;

var url = 'http://www.idealsoft.com.br/produtos/';

request(url, function(err, resp, body) {
    const $ = cheerio.load(body);
    var modulos = [];

    $('h3.faixatitulomodulo').each(function (_, e) {
        modulos.push({
            'nome': $(this).text().trim(),
            'descricao': $(this).next().text()
        });
    })

    console.log(modulos);
})