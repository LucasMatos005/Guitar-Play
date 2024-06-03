var graficosModel = require("../models/graficosModel");

function listar(req, res) {
    graficosModel.listar().then(function(resultado){
        var contIniciante = 0;
        var contIntermediario = 0;
        var contAvancado = 0;
        for(var i = 0; i < resultado.length; i++){
            if(resultado[i].nivel == 'iniciante') contIniciante++;
            else if(resultado[i].nivel == 'intermediário') contIntermediario++;
            else contAvancado++;
        }
        // console.log(`${contIniciante}, ${contIntermediario}, ${contAvancado}`);
        // console.log(resultado[0].nivel);
        res.status(200).json({
            qtdIniciante: contIniciante,
            qtdIntermediario: contIntermediario,
            qtdAvancado: contAvancado,
        });
    }).catch(function(erro){
        res.status(500).json(erro.sqlMessage)
    })
}

module.exports = {
    listar
}