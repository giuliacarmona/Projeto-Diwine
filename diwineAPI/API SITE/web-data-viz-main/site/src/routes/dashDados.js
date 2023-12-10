var express = require("express");
var router = express.Router();

var dashboardController = require("../controllers/dashDadosController");

router.get("/buscarDadosX", function (req, res){
    dashboardController.buscarDadosX(req, res);
})

module.exports = router