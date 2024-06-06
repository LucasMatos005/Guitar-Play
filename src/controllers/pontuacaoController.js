var pontuacaoModel = require("../models/pontuacaoModel");

function mostrar(req, res) {
    pontuacaoModel.mostrar().then(function
    (resultado){
        res.status(200).json(resultado);
    }).catch(function(erro){
        res.status(500).json(erro.sqlMessage);
    })
}

function registrar(req, res) {
    var acerto = req.body.acerto;
    var erro = req.body.erro;

    if(acerto == undefined || erro == undefined){
        res.status(400).send("Parece que você ainda não respondeu o quiz!");
    }

    pontuacaoModel.registrar(acerto, erro).then(function
    (resposta){
        res.status(200).send("Pontuação resgistrada");
    }).catch(function(erro){
        res.status(500).json(erro.sqlMessage);
    })
}

module.exports = {
    mostrar,
    registrar
}