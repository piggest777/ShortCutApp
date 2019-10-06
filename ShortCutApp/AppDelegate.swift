//
//  AppDelegate.swift
//  ShortCutApp
//
//  Created by Denis Rakitin on 2019-10-06.
//  Copyright © 2019 Denis Rakitin. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

//var vcArray = [UIViewController]()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
//           let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        let mountainVC = storyboard.instantiateViewController(identifier: "mountainsVC") as! MountainsVC
//        let spaceVC = storyboard.instantiateViewController(identifier: "cpaceVC") as! SpaceVC
//        let oceanVC = storyboard.instantiateViewController(identifier: "oceanVC") as! OceanVC
//        vcArray = [mountainVC, spaceVC, oceanVC]
        // Override point for customization after application launch.
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
    
    enum ShortcutType: String {
        case mountains = "mountains"
        case space = "space"
        case ocean = "ocean"
    }
    
    func application(_ application: UIApplication, performActionFor shortcutItem: UIApplicationShortcutItem, completionHandler: @escaping (Bool) -> Void) {
        
        print(shortcutItem.type)
       
        if let type = shortcutItem.type.components(separatedBy: ".").last {
            
            
            
            
            switch type {
            case ShortcutType.space.rawValue:
                print("This is Space")
            case ShortcutType.ocean.rawValue:
                print("This is Ocean")
            default:
                print("There are the mountains")
            }
            
        }
        
    }


}

