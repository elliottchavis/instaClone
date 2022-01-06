//
//  MainTabController.swift
//  instaClone
//
//  Created by elliott chavis on 1/6/22.
//

import UIKit

class MainTabController: UITabBarController {
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureViewControllers()
    }
    
    // MARK: - Helpers
    
    func configureViewControllers() {
        
        view.backgroundColor = .white

        
        let feed = FeedController()
        let search = SearchController()
        let imageSelector = ImageSelectorController()
        let notificaiton = NotificationController()
        let profile = ProfileController()
        
        viewControllers = [feed, search, imageSelector, notificaiton, profile]
    }
    
}
