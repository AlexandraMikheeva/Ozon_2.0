//
//  AppDelegate.swift
//  Ozon_2.0
//
//  Created by Михеева Александра Германовна on 13.12.2021.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)

        if AuthManager.shared.isSignedIn {
            window?.rootViewController = TabBarController()
        }
        else {
            let navVC = UINavigationController(rootViewController: WelcomeViewController())
            navVC.navigationBar.prefersLargeTitles = true
            navVC.viewControllers.first?.navigationItem.largeTitleDisplayMode = .always
            window?.rootViewController = navVC
        }
        
        window?.makeKeyAndVisible()
//        window?.windowScene = window
        
//        self.window = window
        // Create an instance of the main view controller and a navigation controller
//        let mainController = TabBarController()
//        let navigationController = UINavigationController(rootViewController: mainController)
//
//        // Tell the window to load the main controller as it's root view
//        window?.rootViewController = navigationController
//        window?.makeKeyAndVisible()
//        window?.windowScene = windowScene        // Override point for customization after application launch.
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


}

