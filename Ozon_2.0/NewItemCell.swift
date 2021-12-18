//
//  NewItemCell.swift
//  Ozon_2.0
//
//  Created by Михеева Александра Германовна on 18.12.2021.
//

import Foundation
import UIKit

class NewItemCell: UICollectionViewCell {
    
    var data: Item? {
        didSet{
            guard let data = data else { return }
            image.image = data.image
            title.text = data.title
        }
    }
    
    let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 0.4
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.distribution = .fill
        return stackView
    }()

    let image: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        return image
    }()

    let title: UILabel = {
        let title = UILabel()
        title.lineBreakMode = .byWordWrapping
        title.numberOfLines = 0
        title.translatesAutoresizingMaskIntoConstraints = false
        title.textColor = .gray
        title.font = UIFont(name: "AvenirNext-Bold", size: 7)
        title.textAlignment = .center
        title.text = "testing"
        return title
    }()

    override init(frame: CGRect) {
        super.init(frame: .zero)
        
        setup()
    }
    
    func setup() {
        contentView.addSubview(stackView)

        stackView.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 0.80).isActive = true
        stackView.heightAnchor.constraint(equalTo: contentView.heightAnchor, multiplier: 0.70).isActive = true
        stackView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true

        stackView.addArrangedSubview(image)
        image.heightAnchor.constraint(equalTo: stackView.heightAnchor, multiplier: 0.55).isActive = true

        stackView.addArrangedSubview(title)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
