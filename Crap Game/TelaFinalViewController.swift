//
//  TelaFinalViewController.swift
//  Crap Game
//
//  Created by João Victor Ferreira Pimenta on 03/06/21.
//

import UIKit

class TelaFinalViewController: UIViewController {
    
    var score: Int = 0

    @IBOutlet weak var scoreLabel: UILabel!
    
    @IBOutlet weak var menuFinalBotao: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scoreLabel.text = "Score: \(score)"
        
        scoreLabel.layer.cornerRadius = 10
        scoreLabel.layer.masksToBounds = true
        
        menuFinalBotao.layer.cornerRadius = 20
        menuFinalBotao.layer.masksToBounds = true

        // Do any additional setup after loading the view.
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
