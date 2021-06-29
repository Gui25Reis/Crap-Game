//
//  Teoria2ViewController.swift
//  Crap Game
//
//  Created by João Victor Ferreira Pimenta on 16/06/21.
//

import UIKit

class TheoryViewController: UIViewController {
    
    @IBOutlet weak var botaoCancel: UIButton!
        
    @IBAction func actBotaoCancel(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
