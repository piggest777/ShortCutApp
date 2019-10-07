//
//  SceneDelegate.swift
//  ShortCutApp
//
//  Created by Denis Rakitin on 2019-10-06.
//  Copyright © 2019 Denis Rakitin. All rights reserved.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    
//var vcArray = [UIViewController]()

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
//           let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        let mountainVC = storyboard.instantiateViewController(identifier: "mountainsVC") as! MountainsVC
//        let spaceVC = storyboard.instantiateViewController(identifier: "spaceVC") as! SpaceVC
//        let oceanVC = storyboard.instantiateViewController(identifier: "oceanVC") as! OceanVC
//        vcArray = [mountainVC, spaceVC, oceanVC]

//        var shortcutItems = UIApplication.shared.shortcutItems ?? []
        
        let oceanShortcut = UIMutableApplicationShortcutItem(type: "\(Bundle.main.bundleIdentifier).ocean", localizedTitle: "Ocean", localizedSubtitle: nil, icon: UIApplicationShortcutIcon.init(templateImageName: "OceanShort"), userInfo: nil)
        
        UIApplication.shared.shortcutItems = [oceanShortcut]
        
        
        
        guard let _ = (scene as? UIWindowScene) else { return }
        
     
        
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not neccessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }
    
    enum ShortcutType: String {
        case mountains = "mountains"
        case space = "space"
        case ocean = "ocean"
    }
    
    func windowScene(_ windowScene: UIWindowScene, performActionFor shortcutItem: UIApplicationShortcutItem, completionHandler: @escaping (Bool) -> Void) {
        
        let navVC = window?.rootViewController as! UITabBarController
//        navVC.setViewControllers(vcArray, animated: false)
        
               if let type = shortcutItem.type.components(separatedBy: ".").last {
       
                   switch type {
                   case ShortcutType.space.rawValue:
//                    navVC.popToViewController(vcArray[1], animated: true)
                    navVC.selectedIndex = 1
                    completionHandler(true)
                       print("This is Space")
                   case ShortcutType.ocean.rawValue:
//                    navVC.popToViewController(vcArray[2], animated: true)
                    navVC.selectedIndex = 2
                    completionHandler(true)
                       print("This is Ocean")
                   default:
//                    navVC.popToRootViewController(animated: true)
                    navVC.selectedIndex = 0
                     completionHandler(true)
                       print("There are the mountains")
                   }
       
               }
        
        completionHandler(false)
        
        
    }



}

