//
//  HomeConfiguration.swift
//  MarvelApp
//
//  Created Matias Palmieri on 12/09/2022.
//  Copyright © 2022 ___ORGANIZATIONNAME___. All rights reserved.

import UIKit

struct HomeConfigurator {
    static func build() -> HomeViewController {
        let interactor: HomeInteractor = HomeInteractor()
        let router: HomeRouter = HomeRouter()
        let presenter: HomePresenter = HomePresenter(interactor: interactor, router: router)
        let view: HomeViewController = HomeViewController(presenter: presenter)
        
        presenter.view = view
        interactor.presenter = presenter
        router.viewController = view
        
        return view
    }
}
