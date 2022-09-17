//
//  HomeViewController.swift
//  MarvelApp
//
//  Created Matias Palmieri on 12/09/2022.
//  Copyright © 2022 ___ORGANIZATIONNAME___. All rights reserved.

import UIKit

final class HomeViewController: UITabBarController {
	private let presenter: HomePresenterProtocol
    
    required init(presenter: HomePresenterProtocol) {
        self.presenter = presenter
        super.init(nibName: "HomeViewController", bundle: Bundle(for: HomeViewController.self))
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

	override func viewDidLoad() {
        super.viewDidLoad()
        customizeUI()
    }
    
    // MARK: - View - Private Methods
    private func customizeUI() {
        loadTabsOptions()
    }
    
    private func loadTabsOptions() {
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor(hex: "747474")], for: .normal)
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor(hex: "262626")], for: .selected)
        
        // Tab 1
        let unselectedCharacterImage = UIImage(named: "icon-superhero")!.withRenderingMode(.alwaysOriginal)
        let selectedCharacterImage = UIImage(named: "icon-superhero-disable")!.withRenderingMode(.alwaysOriginal)
        
        let ncCharacters = UINavigationController(rootViewController: CharactersConfigurator.build())
        ncCharacters.tabBarItem = UITabBarItem(title: "Characters", image: selectedCharacterImage, selectedImage: nil)
        
        // Tab 2
        let unselectedEventsImage = UIImage(named: "icon-calendar")!.withRenderingMode(.alwaysOriginal)
        let selectedEventsImage = UIImage(named: "icon-calendar-disabled")!.withRenderingMode(.alwaysOriginal)
        
        let ncEvents = UINavigationController(rootViewController: EventsConfigurator.build())
        ncEvents.tabBarItem = UITabBarItem(title: "Events", image: selectedEventsImage, selectedImage: nil)
        
        self.viewControllers = [ncCharacters, ncEvents]
        
        tabBar.items![0].image = selectedCharacterImage
        tabBar.items![0].selectedImage = unselectedCharacterImage
        
        tabBar.items![1].image = selectedEventsImage
        tabBar.items![1].selectedImage = unselectedEventsImage
    }
}

// MARK: - HomeViewProtocol
extension HomeViewController: HomeViewProtocol {}
