var inserirLoteModel = require("../models/inserirLoteModel");

function inserirLote(req, res) {
    // Crie uma variável que vá recuperar os valores do arquivo cadastro.html
    
       var qtdLote = req.body.qtdLoteServer;
       var anoMaturacao = req.body.anoMaturacaoServer;
       var mesMaturacao = req.body.mesMaturacaoServer;
       var dataForm = req.body.dataFormServer;
       var iptApelidoLote = req.body. iptApelidoLoteServer;
       var selectTipoVinho = req.body.selectTipoVinhoServer;
  
    
    // Faça as validações dos valores

        // Passe os valores como parâmetro e vá para o arquivo usuarioModel.js
        inserirLoteModel.inserirLote(qtdLote, anoMaturacao, mesMaturacao ,dataForm, iptApelidoLote, selectTipoVinho)
            .then(
                function (resultado) {
                    res.json(resultado);
                }
            ).catch(
                function (erro) {
                    console.log(erro);
                    console.log(
                        "\nHouve um erro ao realizar o cadastro! Erro: ",
                        erro.sqlMessage
                    );
                    res.status(500).json(erro.sqlMessage);
                }
            );
    }

    console.log('Estou no controller')

module.exports = {
    inserirLote
}