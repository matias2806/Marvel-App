//
//  HomeInteractor.swift
//  MarvelApp
//
//  Created Matias Palmieri on 12/09/2022.
//  Copyright © 2022 ___ORGANIZATIONNAME___. All rights reserved.

final class HomeInteractor {

    weak var presenter: HomeInteractorOutputProtocol?
}

// MARK: - HomeInteractorProtocol
extension HomeInteractor: HomeInteractorProtocol {}
