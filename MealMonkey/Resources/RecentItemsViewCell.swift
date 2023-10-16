//
//  RecentItemsViewCell.swift
//  MealMonkey
//
//  Created by Gökalp on 15.10.2023.
//

import UIKit

class RecentItemsViewCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addViews()
    }
        
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let foodImage: UIImageView = {
        let imageView = UIImageView()
        imageView.layer.cornerRadius = 8
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let foodTitle: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        label.textColor = .mealMonkeyGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let starImage: UIImageView = {
        let imageView = UIImageView()
        imageView.tintColor = UIColor(named: "mealMonkeyOrange")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let rating: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        label.textColor = .mealMonkeyOrange
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let ratingNumber: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 12, weight: .regular)
        label.textColor = .mealMonkeyGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let foodType: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 13, weight: .regular)
        label.textColor = .mealMonkeyGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private func addViews() {
        backgroundColor = .white
        
        addSubview(foodImage)
        addSubview(foodTitle)
        addSubview(starImage)
        addSubview(rating)
        addSubview(ratingNumber)
        addSubview(foodType)
        
        foodImage.topAnchor.constraint(equalTo: topAnchor, constant: 0).isActive = true
        foodImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16).isActive = true
        foodImage.widthAnchor.constraint(equalToConstant: 80).isActive = true
        foodImage.heightAnchor.constraint(equalToConstant: 80).isActive = true
        
        foodTitle.topAnchor.constraint(equalTo: topAnchor, constant: 0).isActive = true
        foodTitle.leadingAnchor.constraint(equalTo: foodImage.trailingAnchor, constant: 16).isActive = true
        foodTitle.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16).isActive = true
        
        foodType.topAnchor.constraint(equalTo: foodTitle.bottomAnchor, constant: 5).isActive = true
        foodType.leadingAnchor.constraint(equalTo: foodImage.trailingAnchor, constant: 16).isActive = true
        foodType.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16).isActive = true

        starImage.topAnchor.constraint(equalTo: foodType.bottomAnchor, constant: 5).isActive = true
        starImage.leadingAnchor.constraint(equalTo: foodImage.trailingAnchor, constant: 16).isActive = true
        starImage.widthAnchor.constraint(equalToConstant: 12).isActive = true
        starImage.heightAnchor.constraint(equalToConstant: 12).isActive = true
        
        rating.topAnchor.constraint(equalTo: foodType.bottomAnchor, constant: 4).isActive = true
        rating.leadingAnchor.constraint(equalTo: starImage.trailingAnchor, constant: 3).isActive = true
        
        ratingNumber.topAnchor.constraint(equalTo: foodType.bottomAnchor, constant: 4).isActive = true
        ratingNumber.leadingAnchor.constraint(equalTo: rating.trailingAnchor, constant: 3).isActive = true
    }
}
