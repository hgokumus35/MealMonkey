//
//  FoodTypeViewItemCell.swift
//  MealMonkey
//
//  Created by Gökalp on 16.10.2023.
//

import UIKit

class FoodTypeViewItemCell : UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addViews()
    }
        
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    let foodImage: UIImageView = {
        let imageView = UIImageView()
        imageView.layer.cornerRadius = 10
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let foodType: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        label.textColor = .mealMonkeyGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private func addViews() {
        backgroundColor = .white

        addSubview(foodImage)
        addSubview(foodType)
        
        foodImage.topAnchor.constraint(equalTo: topAnchor, constant: 0).isActive = true
        foodImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16).isActive = true
        foodImage.widthAnchor.constraint(equalToConstant: 96).isActive = true
        foodImage.heightAnchor.constraint(equalToConstant: 96).isActive = true
        
        foodType.topAnchor.constraint(equalTo: foodImage.bottomAnchor, constant: 4).isActive = true
        foodType.leadingAnchor.constraint(equalTo: foodImage.leadingAnchor).isActive = true
        foodType.trailingAnchor.constraint(equalTo: foodImage.trailingAnchor).isActive = true
        foodType.textAlignment = .center
    }
}
