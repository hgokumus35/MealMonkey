//
//  FoodModel.swift
//  MealMonkey
//
//  Created by Gökalp on 16.10.2023.
//

import Foundation

class FoodModel {
    let foodTitle: String
    let foodImage: String
    let foodType: String
    let rating: Double
    let ratingCount: String
    let starImage: String
    
    init(foodTitle: String, foodImage: String, foodType: String, rating: Double, ratingCount: String, starImage: String) {
        self.foodTitle = foodTitle
        self.foodImage = foodImage
        self.foodType = foodType
        self.rating = rating
        self.ratingCount = ratingCount
        self.starImage = starImage
    }
}
