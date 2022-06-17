//
//  RPAppDelegate.swift
//  RRRPlayer
//
//  Created by 任敬 on 2022/6/17.
//

import UIKit

@main
class RPAppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.backgroundColor = .white
        self.window?.makeKeyAndVisible()
        return true
    }

    
}

