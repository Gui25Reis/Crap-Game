//
//  Fase.swift
//  Crap Game
//
//  Created by João Victor Ferreira Pimenta on 03/06/21.
//

import Foundation
import UIKit


class Fase{
    var imagem: String
    var botaoCorreto: Int
    var pontuacao: Int
    var textoPergunta: String
    
    init(imagem: Int, botaoCorreto: Int, textoPergunta: String) {
        self.botaoCorreto = botaoCorreto
        self.pontuacao = 100
        self.textoPergunta = textoPergunta
        self.imagem = "fase\(imagem)imagem"
    }
}
// 0 é não e 1 é sim pro botao
