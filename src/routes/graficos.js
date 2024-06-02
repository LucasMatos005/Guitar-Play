var express = require("express");
var router = express.Router();

var graficosController = require("../controllers/graficosController");

router.get("/listar", function (req, res){
    graficosController.listar(req, res);
});

module.exports = router;