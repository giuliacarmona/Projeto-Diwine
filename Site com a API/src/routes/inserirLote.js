var express = require("express");
var router = express.Router();

var inserirLoteController = require("../controllers/inserirLoteController");

//Recebendo os dados do html e direcionando para a função cadastrar de inserirLoteController.js
router.post("/inserirLote", function (req, res) {

    inserirLoteController.inserirLote(req, res);
})

module.exports = router;