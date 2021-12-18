//
//  HomeViewController.swift
//  Ozon_2.0
//
//  Created by Михеева Александра Германовна on 18.12.2021.
//

import Foundation
import UIKit

class HomeViewController: UIViewController {

    let data = [
        Item(title: "Catalog", image: UIImage(named: "catalog")!),
        Item(title: "Installments", image: UIImage(named: "installments")!),
        Item(title: "Offers", image: UIImage(named: "offers")!),
        Item(title: "Ozon for Business", image: UIImage(named: "OzonForBusiness")!),
        Item(title: "TOP Fashion", image: UIImage(named: "TOPFashion")!),
        Item(title: "Electronics", image: UIImage(named: "electronics")!),
        Item(title: "Clothes and Shoes", image: UIImage(named: "clothesAndShoes")!),
        Item(title: "Daily demand", image: UIImage(named: "dailyDemand")!),
        Item(title: "Home and Garden", image: UIImage(named: "homeAndGarden")!),
        Item(title: "Ozon Discount", image: UIImage(named: "OzonDiscount")!)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        
        collectionView.dataSource = self
        collectionView.delegate = self
        
        setViews()
        
    }
    
    func setViews() {

        self.view.addSubview(collectionView)
        collectionView.widthAnchor.constraint(equalTo: self.view.layoutMarginsGuide.widthAnchor, multiplier: 1.0).isActive = true
        collectionView.heightAnchor.constraint(equalTo: self.view.layoutMarginsGuide.heightAnchor, multiplier: 1.0).isActive = true
        collectionView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        collectionView.centerYAnchor.constraint(equalTo: self.view.layoutMarginsGuide.centerYAnchor).isActive = true

    }
    
    let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 30
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.backgroundColor = UIColor(red:1.0, green:1.0, blue:1.0, alpha:0.0)

        collectionView.register(NewItemCell.self, forCellWithReuseIdentifier: "cell")

        return collectionView
    }()
    
}

extension HomeViewController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! NewItemCell
        cell.backgroundColor = .white
        cell.data = self.data[indexPath.row]
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width/5.7, height: collectionView.frame.height/6.5)
    }
}
