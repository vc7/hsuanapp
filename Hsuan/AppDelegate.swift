//
//  AppDelegate.swift
//  Hsuan
//
//  Created by vincent on 2015/04/13.
//  Copyright (c) 2015年 Vincenttt. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var mainTabBarController: UITabBarController?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
        self.window!.backgroundColor = UIColor.whiteColor()
        
        self.mainTabBarController = UITabBarController()
        self.mainTabBarController!.viewControllers = [UINavigationController(rootViewController: HSHomeViewController()),
            UINavigationController(rootViewController: HSSkillsViewController()),
            UINavigationController(rootViewController: HSProjectsViewController()),
            UINavigationController(rootViewController: HSInfoViewController())]
        
        self.window!.rootViewController = self.mainTabBarController
        
        self.window!.makeKeyAndVisible()
        
        return true
    }

}

