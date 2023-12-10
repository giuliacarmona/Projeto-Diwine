var express = require("express");
var router = express.Router();

var diwineController = require("../controllers/empresasDiwineController");

router.get("/listar", function (req, res) {
    diwineController.listar(req, res);
  });

module.exports = router;