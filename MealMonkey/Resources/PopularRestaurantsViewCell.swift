//
//  PopularRestaurantsViewCell.swift
//  MealMonkey
//
//  Created by Gökalp on 15.10.2023.
//

import UIKit

class PopularRestaurantsViewCell : UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addViews()
    }
        
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let foodImage: UIImageView = {
        let imageView = UIImageView()
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
        label.font = UIFont.systemFont(ofSize: 13, weight: .regular)
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
        foodImage.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        foodImage.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
        foodImage.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        foodTitle.topAnchor.constraint(equalTo: foodImage.bottomAnchor, constant: 10).isActive = true
        foodTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16).isActive = true
        foodTitle.textAlignment = .left
        
        starImage.topAnchor.constraint(equalTo: foodTitle.bottomAnchor, constant: 5).isActive = true
        starImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16).isActive = true
        starImage.widthAnchor.constraint(equalToConstant: 16).isActive = true
        starImage.heightAnchor.constraint(equalToConstant: 16).isActive = true
        
        rating.topAnchor.constraint(equalTo: foodTitle.bottomAnchor, constant: 5).isActive = true
        rating.leadingAnchor.constraint(equalTo: starImage.trailingAnchor, constant: 2).isActive = true
        
        ratingNumber.topAnchor.constraint(equalTo: foodTitle.bottomAnchor, constant: 5).isActive = true
        ratingNumber.leadingAnchor.constraint(equalTo: rating.trailingAnchor, constant: 2).isActive = true
        
        foodType.topAnchor.constraint(equalTo: foodTitle.bottomAnchor, constant: 5).isActive = true
        foodType.leadingAnchor.constraint(equalTo: ratingNumber.trailingAnchor, constant: 10).isActive = true
    }
}
