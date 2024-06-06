var express = require("express");
var router = express.Router();

var pontuacaoController = require("../controllers/pontuacaoController");

router.post("/registrar", function
(req, res){
     pontuacaoController.registrar(req, res);
});

router.get("/mostrar", function 
(req, res) {
    pontuacaoController.mostrar(req, res);
});

module.exports = router;