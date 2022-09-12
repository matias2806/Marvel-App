//
//  CharactersConfiguration.swift
//  MarvelApp
//
//  Created Matias Palmieri on 12/09/2022.
//  Copyright © 2022 ___ORGANIZATIONNAME___. All rights reserved.

import UIKit

struct CharactersConfigurator {
    static func build() -> CharactersViewController {
        let interactor: CharactersInteractor = CharactersInteractor()
        let router: CharactersRouter = CharactersRouter()
        let presenter: CharactersPresenter = CharactersPresenter(interactor: interactor, router: router)
        let view: CharactersViewController = CharactersViewController(presenter: presenter)
        
        presenter.view = view
        interactor.presenter = presenter
        router.viewController = view
        
        return view
    }
}
