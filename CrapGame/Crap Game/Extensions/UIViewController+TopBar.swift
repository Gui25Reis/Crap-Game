//
//  UIViewController+TopBar.swift
//  Crap Game
//
//  Created by Gui Reis on 29/06/21.
//

import UIKit

extension UIViewController {
    func viewWillAppear(_ animated: Bool) {
        setNeedsStatusBarAppearanceUpdate()
    }

    var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}
