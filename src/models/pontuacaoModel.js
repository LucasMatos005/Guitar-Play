var database = require("../database/config")

function mostrar() {
    var instrucao = `
        SELECT quantidade_acertos, quantidade_erros FROM quiz; 
    `;
    console.log("Executando a instrução SQL: \n" + instrucao);
    return database.executar(instrucao);
}

function registrar(acerto, erro) {
    var instrucao = `
        INSERT INTO quiz (quantidade_acertos, quantidade_erros) VALUES (${acerto}, ${erro});
    `;
    console.log("Executando a instrução SQL: \n" + instrucao);
    return database.executar(instrucao);
}

module.exports = {
    registrar,
    mostrar
}