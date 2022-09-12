//
//  CharactersProtocols.swift
//  MarvelApp
//
//  Created Matias Palmieri on 12/09/2022.
//  Copyright © 2022 ___ORGANIZATIONNAME___. All rights reserved.

import Foundation

// MARK: - View
protocol CharactersViewProtocol: AnyObject {}

// MARK: - Interactor Input - Presenter -> Interactor
protocol CharactersInteractorProtocol: AnyObject {}

// MARK: - Interactor Output - Interactor -> Presenter
protocol CharactersInteractorOutputProtocol: AnyObject {}

// MARK: - Presenter
protocol CharactersPresenterProtocol: AnyObject {}

// MARK: - Router
protocol CharactersRouterProtocol: AnyObject {}
