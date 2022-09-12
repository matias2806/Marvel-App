//
//  HomeProtocols.swift
//  MarvelApp
//
//  Created Matias Palmieri on 12/09/2022.
//  Copyright © 2022 ___ORGANIZATIONNAME___. All rights reserved.

import Foundation

// MARK: - View
protocol HomeViewProtocol: AnyObject {}

// MARK: - Interactor Input - Presenter -> Interactor
protocol HomeInteractorProtocol: AnyObject {}

// MARK: - Interactor Output - Interactor -> Presenter
protocol HomeInteractorOutputProtocol: AnyObject {}

// MARK: - Presenter
protocol HomePresenterProtocol: AnyObject {}

// MARK: - Router
protocol HomeRouterProtocol: AnyObject {}
