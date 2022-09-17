//
//  EventsViewController.swift
//  MarvelApp
//
//  Created Matias Palmieri on 17/09/2022.
//  Copyright © 2022 ___ORGANIZATIONNAME___. All rights reserved.

import UIKit

final class EventsViewController: UIViewController {
	private let presenter: EventsPresenterProtocol
    
    required init(presenter: EventsPresenterProtocol) {
        self.presenter = presenter
        super.init(nibName: "EventsViewController", bundle: Bundle(for: EventsViewController.self))
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

// MARK: - EventsViewProtocol
extension EventsViewController: EventsViewProtocol {}
