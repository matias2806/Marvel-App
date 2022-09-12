//
//  HomePresenter.swift
//  MarvelApp
//
//  Created Matias Palmieri on 12/09/2022.
//  Copyright © 2022 ___ORGANIZATIONNAME___. All rights reserved.

import UIKit

final class HomePresenter {

    weak var view: HomeViewProtocol?
    private let interactor: HomeInteractorProtocol
    private let router: HomeRouterProtocol

    init(interactor: HomeInteractorProtocol,
         router: HomeRouterProtocol) {
        self.interactor = interactor
        self.router = router
    }
}

// MARK: - HomePresenterProtocol
extension HomePresenter: HomePresenterProtocol {}

// MARK: - HomeInteractorOutputProtocol
extension HomePresenter: HomeInteractorOutputProtocol {}
