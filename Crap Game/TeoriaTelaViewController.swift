//
//  TeoriaTelaViewController.swift
//  Crap Game
//
//  Created by João Victor Ferreira Pimenta on 04/06/21.
//

import UIKit

class TeoriaTelaViewController: UIViewController {

    @IBOutlet weak var proximoTeoriaBotao: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        proximoTeoriaBotao.layer.cornerRadius = 20
        proximoTeoriaBotao.layer.masksToBounds = true

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
