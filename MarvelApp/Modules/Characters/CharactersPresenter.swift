//
//  CharactersPresenter.swift
//  MarvelApp
//
//  Created Matias Palmieri on 12/09/2022.
//  Copyright © 2022 ___ORGANIZATIONNAME___. All rights reserved.

import UIKit

final class CharactersPresenter {

    weak var view: CharactersViewProtocol?
    private let interactor: CharactersInteractorProtocol
    private let router: CharactersRouterProtocol

    init(interactor: CharactersInteractorProtocol,
         router: CharactersRouterProtocol) {
        self.interactor = interactor
        self.router = router
    }
}

// MARK: - CharactersPresenterProtocol
extension CharactersPresenter: CharactersPresenterProtocol {}

// MARK: - CharactersInteractorOutputProtocol
extension CharactersPresenter: CharactersInteractorOutputProtocol {}
