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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.botaoJogar.layer.cornerRadius = 20
        self.botaoJogar.layer.masksToBounds = true
        
        self.botaoTutorial.layer.cornerRadius = 20
        self.botaoTutorial.layer.masksToBounds = true
    }
}
