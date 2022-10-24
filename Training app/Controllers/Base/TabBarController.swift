//
//  TabBarController.swift
//  Training app
//
//  Created by Артём Тюрморезов on 21.10.2022.
//

import Foundation
import UIKit

enum Tabs: Int {
    case overview
    case session
    case progress
    case settings
}

final class TabBarController: UITabBarController {
   
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        configure()

    
    }
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    private func configure() {
        tabBar.tintColor = Resources.Colors.active
        tabBar.barTintColor = Resources.Colors.inactive
        tabBar.backgroundColor = .white
        
        tabBar.layer.borderColor = Resources.Colors.separator.cgColor
        tabBar.layer.borderWidth = 1
        tabBar.layer.masksToBounds = true
    
        
        let overviewController = OverviewController()
        let sessionController = SessionController()
        let progressController = ProgressController()
        let settingsController = SettingsController()
        
        let overviewNavigationController = NavBarController(rootViewController: overviewController)
        let sessionNavigationController = NavBarController(rootViewController: sessionController)
        let progressNavigationController = NavBarController(rootViewController: progressController)
        let settingsNavigationController = NavBarController(rootViewController: settingsController)
        
        overviewController.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.overview, image: Resources.Images.overview, tag: Tabs.overview.rawValue)
        sessionController.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.session, image: Resources.Images.session, tag: Tabs.session.rawValue)
        progressController.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.progress, image: Resources.Images.progress, tag: Tabs.progress.rawValue)
        settingsController.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.settings, image: Resources.Images.settings, tag: Tabs.settings.rawValue)
        
        setViewControllers([overviewNavigationController, sessionNavigationController, progressNavigationController, settingsNavigationController], animated: false)
    }
    
}