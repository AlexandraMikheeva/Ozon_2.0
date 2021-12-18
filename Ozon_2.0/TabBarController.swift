//
//  TabBarController.swift
//  Ozon_2.0
//
//  Created by Михеева Александра Германовна on 18.12.2021.
//

import Foundation
import UIKit

class TabBarController: UITabBarController, UITabBarControllerDelegate{

    var homeItemImageView: UIImageView!
    var expressItemImageView: UIImageView!
    var binItemImageView: UIImageView!
    var favoritesItemImageView: UIImageView!
    var myOzonItemImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.delegate = self
        
        setupViewControllers()
        setupTabBarIcons()
        
    }
    
    func setupTabBarIcons() {

        let homeItemView = self.tabBar.subviews[0]
        let expressItemView = self.tabBar.subviews[1]
        let binItemView = self.tabBar.subviews[2]
        let favoritesItemView = self.tabBar.subviews[3]
        let myOzonItemView = self.tabBar.subviews[4]

        self.homeItemImageView = (homeItemView.subviews.first as! UIImageView)
        self.homeItemImageView.contentMode = .center

        self.expressItemImageView = (expressItemView.subviews.first as! UIImageView)
        self.expressItemImageView.contentMode = .center
        
        self.binItemImageView = (binItemView.subviews.first as! UIImageView)
        self.binItemImageView.contentMode = .center

        self.favoritesItemImageView = (favoritesItemView.subviews.first as! UIImageView)
        self.favoritesItemImageView.contentMode = .center
        
        self.myOzonItemImageView = (myOzonItemView.subviews.first as! UIImageView)
        self.myOzonItemImageView.contentMode = .center
    }

    func setupViewControllers() {

        let homeVC = HomeViewController()
        let navController1 = UINavigationController(rootViewController:homeVC)
        homeVC.tabBarItem = UITabBarItem(title: "Home", image: UIImage(named: "tab-home"), tag: 0)

        let expressVC = ExpressViewController()
        let navController2 = UINavigationController(rootViewController:expressVC)
        expressVC.tabBarItem = UITabBarItem(title: "Express", image: UIImage(named: "tab-express"), tag: 1)
        
        let binVC = BinViewController()
        let navController3 = UINavigationController(rootViewController:binVC)
        binVC.tabBarItem = UITabBarItem(title: "Bin", image: UIImage(named: "tab-bin"), tag: 2)

        let favoritesVC = FavoritesViewController()
        let navController4 = UINavigationController(rootViewController:favoritesVC)
        favoritesVC.tabBarItem = UITabBarItem(title: "Favorites", image: UIImage(named: "tab-favorites"), tag: 3)
        
        let myOzonVC = MyOzonViewController()
        let navController5 = UINavigationController(rootViewController:myOzonVC)
        myOzonVC.tabBarItem = UITabBarItem(title: "My Ozon", image: UIImage(named: "tab-myOzon"), tag: 4)
        
        viewControllers = [navController1, navController2, navController3, navController4, navController5]

    }
    
}
