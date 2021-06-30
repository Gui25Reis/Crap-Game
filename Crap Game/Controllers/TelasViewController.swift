//
//  TelasViewController.swift
//  Crap Game
//
//  Created by João Victor Ferreira Pimenta on 03/06/21.
//

import UIKit

class TelasViewController: UIViewController {
    var fasesDoJogo: [Fase] = []
    var numeroDeFases = 0
    var score: Int = 0
    
    let maxFases:Int = 10
    
    @IBOutlet weak var telasJogo: UIImageView!
    @IBOutlet weak var botaoSimFase: UIButton!
    @IBOutlet weak var botaoNaoFase: UIButton!
    @IBOutlet weak var progressoDoJogo: UILabel!
    @IBOutlet weak var pontuacaoJogo: UILabel!
    @IBOutlet weak var perguntasTextos: UILabel!
    @IBOutlet weak var botaoVoltar: UIButton!
    @IBOutlet weak var fraseEnunciado: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.botaoSimFase.layer.cornerRadius = 20
        self.botaoSimFase.layer.masksToBounds = true
        
        self.botaoNaoFase.layer.cornerRadius = 20
        self.botaoNaoFase.layer.masksToBounds = true
        
        self.pontuacaoJogo.text = ""
        
        let gabarito:[Int]    = [1, 1, 1, 0, 0, 0, 1, 0, 0, 1, 1, 0, 1, 1, 1]
        let tipoFase:[String] = ["Repetition", "Contrast", "Contrast", "Aligment", "Proximity",
                                 "Aligment", "Repetition", "Proximity", "Contrast", "Repetition",
                                 "Repetition", "Aligment", "Aligment", "Proximity", "Contrast",]
        
        let range = Array(0...14).shuffled()
                
        
        for i in 0..<self.maxFases {
            self.fasesDoJogo.append(Fase(imagem: range[i]+1, botaoCorreto: gabarito[range[i]], textoPergunta: tipoFase[range[i]]))
            
        }
        
        let image = fasesDoJogo[numeroDeFases].imagem
        let frase = fasesDoJogo[numeroDeFases].textoPergunta
        telasJogo.image = UIImage(named: image)
        self.progressoDoJogo.text = "\(numeroDeFases + 1)/\(self.maxFases)"
        self.progressoDoJogo.textColor = .white
        self.perguntasTextos.text = frase
        
        
        self.botaoNaoFase.tintColor = UIColor(red: 36/255, green: 170/255, blue: 41/255, alpha: 1)
        self.botaoNaoFase.backgroundColor = UIColor(red: 36/255, green: 170/255, blue: 41/255, alpha: 0.25)
        self.botaoNaoFase.setTitleColor(UIColor(red: 36/255, green: 170/255, blue: 41/255, alpha: 1), for: .normal)
        
        self.botaoSimFase.tintColor = UIColor(red: 241/255, green: 42/255, blue: 42/255, alpha: 1)
        self.botaoSimFase.backgroundColor = UIColor(red: 241/255, green: 42/255, blue: 42/255, alpha: 0.25)
        self.botaoSimFase.setTitleColor(UIColor(red: 241/255, green: 42/255, blue: 42/255, alpha: 1), for: .normal)
        
        self.fraseEnunciado.textColor = .white
        
        let configIcon = UIImage.SymbolConfiguration(pointSize: 25, weight: .bold, scale: .large)
        self.botaoVoltar.setImage(UIImage(systemName: "xmark.circle", withConfiguration: configIcon), for: .normal)
    }
    
    
    @IBAction func botaoSimAtualizar(_ sender: UIButton) -> Void{
        self.contaScore(tag: 0)
        self.organizacaoFases()
    }
    
    @IBAction func botaoNaoAtualizar(_ sender: UIButton) -> Void{
        self.contaScore(tag: 1)
        self.organizacaoFases()
    }
    
    
    private func organizacaoFases() -> Void{
        if (self.numeroDeFases < fasesDoJogo.count-1){
            self.numeroDeFases += 1

            let image = self.fasesDoJogo[self.numeroDeFases].imagem
            self.telasJogo.image = UIImage(named: image)
            
            self.progressoDoJogo.text = "\(self.numeroDeFases+1)/\(self.maxFases)"
            self.perguntasTextos.text = self.fasesDoJogo[self.numeroDeFases].textoPergunta
        }else{
            guard let vc = storyboard?.instantiateViewController(identifier: "TelaFinalViewController") as? TelaFinalViewController else {return}
            vc.score = score
            self.present(vc, animated: false, completion: nil)}
    }
    
    private func contaScore(tag: Int) -> Void{
        if (self.numeroDeFases <= self.fasesDoJogo.count-1){
            if tag == self.fasesDoJogo[self.numeroDeFases].botaoCorreto {
                self.score += 100
            }
        }
    }
}
