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
    init(imagem: String, botaoCorreto: Int, pontuacao: Int, textoPergunta: String) {
        self.imagem = imagem
        self.botaoCorreto = botaoCorreto
        self.pontuacao = pontuacao
        self.textoPergunta = textoPergunta
    }
}
// 0 é não e 1 é sim pro botao
