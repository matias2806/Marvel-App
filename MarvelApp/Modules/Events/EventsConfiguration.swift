//
//  EventsConfiguration.swift
//  MarvelApp
//
//  Created Matias Palmieri on 17/09/2022.
//  Copyright © 2022 ___ORGANIZATIONNAME___. All rights reserved.

import UIKit

struct EventsConfigurator {
    static func build() -> EventsViewController {
        let interactor: EventsInteractor = EventsInteractor()
        let router: EventsRouter = EventsRouter()
        let presenter: EventsPresenter = EventsPresenter(interactor: interactor, router: router)
        let view: EventsViewController = EventsViewController(presenter: presenter)
        
        presenter.view = view
        interactor.presenter = presenter
        router.viewController = view
        
        return view
    }
}
