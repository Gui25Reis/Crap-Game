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
    
    let defaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.scoreLabel.text = "Score: \(score)"
        if self.score>self.defaults.integer(forKey: "score"){
            self.defaults.set(self.score, forKey: "score")
        }
        
        self.scoreLabel.layer.cornerRadius = 10
        self.scoreLabel.layer.masksToBounds = true
        
        self.menuFinalBotao.layer.cornerRadius = 20
        self.menuFinalBotao.layer.masksToBounds = true
    }
}
