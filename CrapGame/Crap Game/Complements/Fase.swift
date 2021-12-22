//
//  Fase.swift
//  Crap Game
//
//  Created by João Victor Ferreira Pimenta on 03/06/21.
//

class Fase{
    var imagem: String
    var botaoCorreto: Int
    var textoPergunta: String
    
    init(imagem: Int, botaoCorreto: Int, textoPergunta: String) {
        self.botaoCorreto = botaoCorreto
        self.textoPergunta = textoPergunta
        self.imagem = "fase\(imagem)img"
    }
}
// 0 é não e 1 é sim pro botao
