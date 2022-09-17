//
//  EventsInteractor.swift
//  MarvelApp
//
//  Created Matias Palmieri on 17/09/2022.
//  Copyright © 2022 ___ORGANIZATIONNAME___. All rights reserved.

final class EventsInteractor {

    weak var presenter: EventsInteractorOutputProtocol?
}

// MARK: - EventsInteractorProtocol
extension EventsInteractor: EventsInteractorProtocol {}
