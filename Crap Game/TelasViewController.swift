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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        botaoSimFase.layer.cornerRadius = 20
        botaoSimFase.layer.masksToBounds = true
        
        botaoNaoFase.layer.cornerRadius = 20
        botaoNaoFase.layer.masksToBounds = true
        //SIM = 0 NÃ0 = 1
        
        let gabarito:[Int]    = [1         , 0         , 0           , 1          , 0           , 1         , 1         , 1          ]
        let tipoFase:[String] = ["Contrast", "Aligment", "Repetition", "Proximity", "Repetition", "Contrast", "Aligment", "Proximity"]
        
        for i in 0..<gabarito.count {
            self.fasesDoJogo.append(Fase(imagem: i+1, botaoCorreto: gabarito[i], textoPergunta: tipoFase[i]))
        }
        
        
        numeroDeFases = 0

        //organizacaoFases()
        let image = fasesDoJogo[numeroDeFases].imagem
        let frase = fasesDoJogo[numeroDeFases].textoPergunta
        telasJogo.image = UIImage(named: image)
        progressoDoJogo.text = "\(numeroDeFases + 1)/8"
        perguntasTextos.text = frase
        
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func botaoSimAtualizar(_ sender: UIButton) {
        contaScore(tag: 0)
        organizacaoFases()
        
    }
    
    @IBAction func botaoNaoAtualizar(_ sender: UIButton) {
        contaScore(tag: 1)
        organizacaoFases()
    }
    
    
    func organizacaoFases(){
        if numeroDeFases < fasesDoJogo.count-1{
            numeroDeFases += 1

            let image = fasesDoJogo[numeroDeFases].imagem
            let frase = fasesDoJogo[numeroDeFases].textoPergunta
            telasJogo.image = UIImage(named: image)
            
            progressoDoJogo.text = "\(numeroDeFases+1)/8"
            perguntasTextos.text = frase
        }
        else{
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let viewController = storyboard.instantiateViewController(withIdentifier: "TelaFinalViewController") as! TelaFinalViewController
            viewController.score = score
        
            self.present(viewController, animated: false, completion: nil)}
    }
    func contaScore(tag: Int){
        if numeroDeFases <= fasesDoJogo.count-1{
            if tag == fasesDoJogo[numeroDeFases].botaoCorreto{
                score += fasesDoJogo[numeroDeFases].pontuacao
                //progressoDoJogo.text = "\(numeroDeFases + 1)/4"
            }
        }
        //else{
        //score += fasesDoJogo[numeroDeFases].pontuacao
        //}
        print(score)
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
    
}
