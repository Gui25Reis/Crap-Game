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
        
        
        botaoJogar.layer.cornerRadius = 20
        botaoJogar.layer.masksToBounds = true
        
        botaoTutorial.layer.cornerRadius = 20
        botaoTutorial.layer.masksToBounds = true

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
