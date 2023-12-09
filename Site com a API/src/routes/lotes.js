var express = require("express");
var router = express.Router();

var lotesController = require("../controllers/lotesController");

router.get("/listar", function (req, res) {
    lotesController.listar(req, res);
  });

module.exports = router;