var database = require("../database/config");

function listar() {
    var query = `select * from lote where fkAmbiente = 1`;
  
    return database.executar(query);
  }

module.exports = {
    listar
};