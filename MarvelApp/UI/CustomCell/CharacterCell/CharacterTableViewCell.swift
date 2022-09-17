//
//  CharacterTableViewCell.swift
//  MarvelApp
//
//  Created by Matias Palmieri on 14/09/2022.
//

import UIKit

class CharacterTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var characterImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeUI()
    }
    
    private func customizeUI() {
        self.selectionStyle = .none
        
    }
    
    func configure(name: String, description: String, urlImage: URL) {
        nameLabel.text = name
        descriptionLabel.text = description
        
//        var url = URL(string: "https://i.annihil.us/u/prod/marvel/i/mg/c/e0/535fecbbb9784.jpg")!
        if let data = try? Data(contentsOf: urlImage) {
            characterImage.image = UIImage(data: data)
        }
    }
            
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
