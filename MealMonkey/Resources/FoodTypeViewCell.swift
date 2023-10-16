//
//  FoodTypeViewCell.swift
//  MealMonkey
//
//  Created by Gökalp on 16.10.2023.
//

import UIKit

class FoodTypeViewCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var foodTypeCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = UICollectionView.ScrollDirection.horizontal
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        return collectionView
    }()
    
    private func setupUI() {
        addSubview(foodTypeCollectionView)
        foodTypeCollectionView.frame = bounds
        foodTypeCollectionView.register(FoodTypeViewItemCell.self, forCellWithReuseIdentifier: "FoodTypeViewItemCell")
        foodTypeCollectionView.reloadData()
        foodTypeCollectionView.dataSource = self
        foodTypeCollectionView.delegate = self
    }
}

extension FoodTypeViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 104, height: collectionView.frame.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FoodTypeViewItemCell", for: indexPath) as! FoodTypeViewItemCell
        cell.foodImage.image = UIImage(named: "beefwellington")
        cell.foodType.text = "American"
        return cell
    }
}
