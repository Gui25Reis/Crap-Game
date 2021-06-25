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
    
    @IBOutlet weak var telasJogo: UIImageView!
    @IBOutlet weak var botaoSimFase: UIButton!
    @IBOutlet weak var botaoNaoFase: UIButton!
    @IBOutlet weak var progressoDoJogo: UILabel!
    @IBOutlet weak var perguntasTextos: UILabel!
    @IBOutlet weak var botaoVoltar: UIButton!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.botaoSimFase.layer.cornerRadius = 20
        self.botaoSimFase.layer.masksToBounds = true
        
        self.botaoNaoFase.layer.cornerRadius = 20
        self.botaoNaoFase.layer.masksToBounds = true
        //SIM = 0 NÃ0 = 1
        
        let gabarito:[Int]    = [1         , 0         , 0           , 1          , 0           , 1         , 1         , 1          ]
        let tipoFase:[String] = ["Contrast", "Aligment", "Repetition", "Proximity", "Repetition", "Contrast", "Aligment", "Proximity"]
        
        for i in 0..<gabarito.count {
            self.fasesDoJogo.append(Fase(imagem: i+1, botaoCorreto: gabarito[i], textoPergunta: tipoFase[i]))
        }
        
        let image = fasesDoJogo[numeroDeFases].imagem
        let frase = fasesDoJogo[numeroDeFases].textoPergunta
        telasJogo.image = UIImage(named: image)
        self.progressoDoJogo.text = "\(numeroDeFases + 1)/8"
        self.progressoDoJogo.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.perguntasTextos.text = frase
        
        
        self.botaoNaoFase.tintColor = UIColor(red: 36/255, green: 170/255, blue: 41/255, alpha: 1)
        self.botaoNaoFase.backgroundColor = UIColor(red: 36/255, green: 170/255, blue: 41/255, alpha: 0.25)
        self.botaoNaoFase.setTitleColor(UIColor(red: 36/255, green: 170/255, blue: 41/255, alpha: 1), for: .normal)
        
        self.botaoSimFase.tintColor = UIColor(red: 241/255, green: 42/255, blue: 42/255, alpha: 1)
        self.botaoSimFase.backgroundColor = UIColor(red: 241/255, green: 42/255, blue: 42/255, alpha: 0.25)
        self.botaoSimFase.setTitleColor(UIColor(red: 241/255, green: 42/255, blue: 42/255, alpha: 1), for: .normal)
    }
    
    
    @IBAction func botaoSimAtualizar(_ sender: UIButton) {
        self.contaScore(tag: 0)
        self.organizacaoFases()
    }
    
    @IBAction func botaoNaoAtualizar(_ sender: UIButton) {
        self.contaScore(tag: 1)
        self.organizacaoFases()
    }
    
    
    func organizacaoFases(){
        if (self.numeroDeFases < fasesDoJogo.count-1){
            self.numeroDeFases += 1

            let image = self.fasesDoJogo[self.numeroDeFases].imagem
            self.telasJogo.image = UIImage(named: image)
            
            self.progressoDoJogo.text = "\(self.numeroDeFases+1)/8"
            self.perguntasTextos.text = self.fasesDoJogo[self.numeroDeFases].textoPergunta
        }else{
            
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let viewController = storyboard.instantiateViewController(withIdentifier: "TelaFinalViewController") as! TelaFinalViewController
            viewController.score = score
        
            self.present(viewController, animated: false, completion: nil)}
    }
    func contaScore(tag: Int){
        if self.numeroDeFases <= self.fasesDoJogo.count-1{
            if tag == self.fasesDoJogo[self.numeroDeFases].botaoCorreto{
                self.score += self.fasesDoJogo[self.numeroDeFases].pontuacao
            }
        }
    }
}
