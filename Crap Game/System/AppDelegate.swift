//
//  AppDelegate.swift
//  Crap Game
//
//  Created by João Victor Ferreira Pimenta on 02/06/21.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
            
        
        // let window = UIApplication.shared.windows.filter {$0.isKeyWindow}.first
        // _ = window?.windowScene?.statusBarManager?.statusBarStyle ?? .lightContent
        
        // UIApplication.shared.isStatusBarHidden = false
        
        UIApplication.shared.statusBarStyle = UIStatusBarStyle.lightContent

        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {

        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {

    }
}
