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
        
        let fase1 = Fase(imagem: "fase1imagem", botaoCorreto: 1, pontuacao: 100, textoPergunta: "Based on  the concept of Contrast. This is")
        
        let fase2 = Fase(imagem: "fase2imagem", botaoCorreto: 0, pontuacao: 100, textoPergunta: "Based on the concept of Alignment. This is")
        
        let fase3 = Fase(imagem: "fase3imagem", botaoCorreto: 0, pontuacao: 100, textoPergunta: "Based on the concept of Repetition. This is")
        
        let fase4 = Fase(imagem: "fase4imagem", botaoCorreto: 1, pontuacao: 100, textoPergunta: "Based on the concept of Proximity. This is")
        
        
        let fase5 = Fase(imagem: "fase5imagem", botaoCorreto: 0, pontuacao: 100, textoPergunta: "Based on the concept of Repetition. This is")
        
        let fase6 = Fase(imagem: "fase6imagem", botaoCorreto: 1, pontuacao: 100, textoPergunta: "Based on the concept of Contrast. This is")
        
        let fase7 = Fase(imagem: "fase7imagem", botaoCorreto: 1, pontuacao: 100, textoPergunta: "Based on the concept of Alignment. This is")
        
        let fase8 = Fase(imagem: "fase8imagem", botaoCorreto: 1, pontuacao: 100, textoPergunta: "Based on the concept of Proximity. This is")
        
        //SIM = 0 NÃ0 = 1
        numeroDeFases = 0
        fasesDoJogo.append(fase1)
        fasesDoJogo.append(fase2)
        fasesDoJogo.append(fase3)
        fasesDoJogo.append(fase4)
        fasesDoJogo.append(fase5)
        fasesDoJogo.append(fase6)
        fasesDoJogo.append(fase7)
        fasesDoJogo.append(fase8)
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
