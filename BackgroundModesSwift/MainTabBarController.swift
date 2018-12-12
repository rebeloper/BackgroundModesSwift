//
//  MainTabBarController.swift
//  BackgroundModesSwift
//
//  Created by Alex Nagy on 12/12/2018.
//  Copyright © 2018 Alex Nagy. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
    }
    
    func setupViews() {
        let audioController = AudioViewController()
        let locationController = LocationViewController()
        
        audioController.tabBarItem.image = UIImage(named: "MainTabBarAudio")?.withRenderingMode(.alwaysTemplate)
        audioController.tabBarItem.selectedImage = UIImage(named: "MainTabBarAudio")?.withRenderingMode(.alwaysTemplate)
        
        locationController.tabBarItem.image = UIImage(named: "MainTabBarLocation")?.withRenderingMode(.alwaysTemplate)
        locationController.tabBarItem.selectedImage = UIImage(named: "MainTabBarLocation")?.withRenderingMode(.alwaysTemplate)
        
        viewControllers = [audioController, locationController]
        
        guard let items = tabBar.items else { return }
        for item in items {
            item.imageInsets = UIEdgeInsets(top: 4, left: 0, bottom: -4, right: 0)
        }
    }
}


