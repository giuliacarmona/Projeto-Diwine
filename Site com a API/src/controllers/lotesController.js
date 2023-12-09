var lotesModel = require("../models/lotesModel");

function listar(req, res) {
    lotesModel.listar().then((resultado) => {
      res.status(200).json(resultado);
    });
  }

  module.exports = {
    listar
  };