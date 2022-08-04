//
//  MainTabController.swift
//  instagramTutorial
//
//  Created by Octavio Jara on 24-07-22.
//

import UIKit

class MainTabController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        configureViewController ()
        tabBar.backgroundColor = .white
    }
    
    func configureViewController () {
        //view.backgroundColor = .white
        let layout = UICollectionViewFlowLayout()
        let feed = templateNavigationController(unselectedImage: "home_unselected", selectedImage: "home_selected", rootViewController: FeedController(collectionViewLayout: layout))
        let search = templateNavigationController(unselectedImage: "search_unselected", selectedImage: "search_selected", rootViewController: SearchController())
        let imageSelected = templateNavigationController(unselectedImage: "plus_unselected", selectedImage: "plus_selected", rootViewController: ImageSelectedController())
        let notification = templateNavigationController(unselectedImage: "like_unselected", selectedImage: "like_selected", rootViewController: NotificationController())
        let profile = templateNavigationController(unselectedImage: "profile_unselected", selectedImage: "profile_selected", rootViewController: ProfileController())
        viewControllers = [feed, search,imageSelected,notification,profile]
    }
    
    func templateNavigationController(unselectedImage: String, selectedImage: String, rootViewController: UIViewController) -> UINavigationController {
        let nav = UINavigationController(rootViewController: rootViewController)
        nav.tabBarItem.image = UIImage(named: unselectedImage)
        nav.tabBarItem.selectedImage = UIImage(named: selectedImage)
        nav.navigationBar.tintColor = .white
        return nav
    }
}
