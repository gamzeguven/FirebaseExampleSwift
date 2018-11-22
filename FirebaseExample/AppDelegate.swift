//
//  AppDelegate.swift
//  FirebaseExample
//
//  Created by Gamze Güven on 22.07.2018.
//  Copyright © 2018 Gamze Güven. All rights reserved.
//

import UIKit
import Firebase

@UIApplicationMain

class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        FirebaseApp.configure()
        return true
    }

}

