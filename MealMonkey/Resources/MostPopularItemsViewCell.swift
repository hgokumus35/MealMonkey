//
//  MostPopularItemsViewCell.swift
//  MealMonkey
//
//  Created by Gökalp on 15.10.2023.
//

import UIKit

class MostPopularItemsViewCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var mostPopularItemsCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = UICollectionView.ScrollDirection.horizontal
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        return collectionView
    }()
    
    private func setupUI() {
        addSubview(mostPopularItemsCollectionView)
        mostPopularItemsCollectionView.frame = bounds
        mostPopularItemsCollectionView.register(MostPopularItemsViewItemCell.self, forCellWithReuseIdentifier: "MostPopularItemsViewItemCell")
        mostPopularItemsCollectionView.reloadData()
        mostPopularItemsCollectionView.dataSource = self
        mostPopularItemsCollectionView.delegate = self
    }
}

extension MostPopularItemsViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width * 0.65, height: collectionView.frame.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MostPopularItemsViewItemCell", for: indexPath) as! MostPopularItemsViewItemCell
        cell.foodImage.image = UIImage(named: "beefwellington")
        cell.foodTitle.text = "Beef Wellington"
        cell.starImage.image = UIImage(systemName: "star.fill")
        cell.foodType.text = "Western Food"
        cell.rating.text = "4.9"
        return cell
    }
}
