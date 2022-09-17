//
//  EventsProtocols.swift
//  MarvelApp
//
//  Created Matias Palmieri on 17/09/2022.
//  Copyright © 2022 ___ORGANIZATIONNAME___. All rights reserved.

import Foundation

// MARK: - View
protocol EventsViewProtocol: AnyObject {}

// MARK: - Interactor Input - Presenter -> Interactor
protocol EventsInteractorProtocol: AnyObject {}

// MARK: - Interactor Output - Interactor -> Presenter
protocol EventsInteractorOutputProtocol: AnyObject {}

// MARK: - Presenter
protocol EventsPresenterProtocol: AnyObject {}

// MARK: - Router
protocol EventsRouterProtocol: AnyObject {}
