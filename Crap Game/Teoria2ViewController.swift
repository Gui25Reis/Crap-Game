//
//  Teoria2ViewController.swift
//  Crap Game
//
//  Created by João Victor Ferreira Pimenta on 16/06/21.
//

import UIKit

class Teoria2ViewController: UIViewController {
    @IBOutlet weak var menuTeoria2Botao: UIButton!
    @IBOutlet weak var teoriaTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        menuTeoria2Botao.layer.cornerRadius = 20
        menuTeoria2Botao.layer.masksToBounds = true
        
        teoriaTextView.layer.cornerRadius = 10
        teoriaTextView.layer.masksToBounds = true
        

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
