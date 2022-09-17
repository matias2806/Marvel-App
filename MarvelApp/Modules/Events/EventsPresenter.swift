//
//  EventsPresenter.swift
//  MarvelApp
//
//  Created Matias Palmieri on 17/09/2022.
//  Copyright © 2022 ___ORGANIZATIONNAME___. All rights reserved.

import UIKit

final class EventsPresenter {

    weak var view: EventsViewProtocol?
    private let interactor: EventsInteractorProtocol
    private let router: EventsRouterProtocol

    init(interactor: EventsInteractorProtocol,
         router: EventsRouterProtocol) {
        self.interactor = interactor
        self.router = router
    }
}

// MARK: - EventsPresenterProtocol
extension EventsPresenter: EventsPresenterProtocol {}

// MARK: - EventsInteractorOutputProtocol
extension EventsPresenter: EventsInteractorOutputProtocol {}
