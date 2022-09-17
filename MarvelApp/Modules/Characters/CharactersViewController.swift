//
//  CharactersViewController.swift
//  MarvelApp
//
//  Created Matias Palmieri on 12/09/2022.
//  Copyright © 2022 ___ORGANIZATIONNAME___. All rights reserved.

import UIKit

final class CharactersViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
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
        title = "Marvel Challenge"
        configureTable()
    }
    
    private func configureTable() {
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(CharacterTableViewCell.self)
    }
    
    // MARK: - View - Private Methods
    private func customizeUI() {}
}

// MARK: - CharactersViewProtocol
extension CharactersViewController: CharactersViewProtocol {}


extension CharactersViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 15
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: CharacterTableViewCell = tableView.dequeueReusableCell(forIndexPath: indexPath)
//        guard let faq = viewPresenter?.getFrequentQuestion(at: indexPath) else { return cell }
        var url = URL(string: "https://i.annihil.us/u/prod/marvel/i/mg/c/e0/535fecbbb9784.jpg")!
        cell.configure(name: "3-D Man",
                       description: "AIM is a terrorist organization bent on destroying the world. AIM is a terrorist organization bent on destroying the world. AIM is a terrorist organization bent on destroying the world.", urlImage: url)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 129
    }
}

extension CharactersViewController: UITableViewDelegate {}
