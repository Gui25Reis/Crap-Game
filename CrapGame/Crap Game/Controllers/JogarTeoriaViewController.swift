//
//  JogsrTeoriaViewController.swift
//  Crap Game
//
//  Created by João Victor Ferreira Pimenta on 03/06/21.
//

import UIKit

class JogarTeoriaViewController: UIViewController {
    @IBOutlet weak var botaoJogar: UIButton!
    @IBOutlet weak var botaoTutorial: UIButton!
    @IBOutlet weak var labelHighScore: UILabel!
    
    let defaults = UserDefaults.standard
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.botaoJogar.layer.cornerRadius = 15
        self.botaoJogar.layer.masksToBounds = true
        
        self.botaoTutorial.layer.cornerRadius = 10
        self.botaoTutorial.layer.masksToBounds = true
        
        self.labelHighScore.text = "High Score: \(self.defaults.integer(forKey: "score"))"
//        self.labelHighScore.textColor = .black 
        self.labelHighScore.layer.cornerRadius = 10
        self.labelHighScore.layer.masksToBounds = true
    }
}
