//
//  DetailViewController.swift
//  RestCountries
//
//  Created by Артур Олехно on 16/11/2023.
//

import UIKit
import SDWebImage

class DetailViewController: UIViewController {

    let flagUIImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Country"
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        
        view.addSubview(flagUIImage)
        view.addSubview(nameLabel)
        
        applyConstraints()
        // Do any additional setup after loading the view.
    }
    
    private func applyConstraints() {
        let flagUIImageConstraints = [
            flagUIImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            flagUIImage.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            flagUIImage.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ]
        let nameLabelConstraints = [
            nameLabel.topAnchor.constraint(equalTo: flagUIImage.bottomAnchor),
            nameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            nameLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ]
        NSLayoutConstraint.activate(flagUIImageConstraints)
        NSLayoutConstraint.activate(nameLabelConstraints)
    }
    
    public func configure(with model: Country) {
        guard let url = URL(string: model.flags.png) else {return}
        flagUIImage.sd_setImage(with: url)
        nameLabel.text = model.name.official
    }
    
}
