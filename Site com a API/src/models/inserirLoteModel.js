var database = require("../database/config")

console.log('Estou no Model')

function inserirLote(qtdLote, anoMaturacao, mesMaturacao, dataForm, iptApelidoLote, selectTipoVinho) {
    console.log("ACESSEI O lote MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function cadastrar():", qtdLote, anoMaturacao, mesMaturacao, dataForm, iptApelidoLote, selectTipoVinho);
    
    // Insira exatamente a query do banco aqui, lembrando da nomenclatura exata nos valores
    //  e na ordem de inserção dos dados.
    var instrucao = `
        INSERT INTO lote VALUES (NULL, '${iptApelidoLote}', '${selectTipoVinho}', '${dataForm}', '${mesMaturacao}', '${anoMaturacao}', '${qtdLote}', 1);
                                    
    `;
    console.log("Executando a instrução SQL: \n" + instrucao);
    return database.executar(instrucao);
}

module.exports = {
    inserirLote
};