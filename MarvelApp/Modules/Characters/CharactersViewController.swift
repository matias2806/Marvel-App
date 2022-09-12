//
//  CharactersViewController.swift
//  MarvelApp
//
//  Created Matias Palmieri on 12/09/2022.
//  Copyright © 2022 ___ORGANIZATIONNAME___. All rights reserved.

import UIKit

final class CharactersViewController: UIViewController {
	private let presenter: CharactersPresenterProtocol
    
    required init(presenter: CharactersPresenterProtocol) {
        self.presenter = presenter
        super.init(nibName: "CharactersViewController", bundle: Bundle(for: CharactersViewController.self))
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

	override func viewDidLoad() {
        super.viewDidLoad()
        customizeUI()
    }
    
    // MARK: - View - Private Methods
    private func customizeUI() {}
}

// MARK: - CharactersViewProtocol
extension CharactersViewController: CharactersViewProtocol {}
