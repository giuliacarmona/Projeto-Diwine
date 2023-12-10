var database = require("../database/config");

function listar() {
    var query = `select * from empresa`;
  
    return database.executar(query);
  }

module.exports = {
    listar
};