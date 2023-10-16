//
//  HomeVC.swift
//  MealMonkey
//
//  Created by Gökalp on 15.10.2023.
//

import UIKit

class HomeVC : UIViewController {
    
    var collectionView: UICollectionView?
    var foodModel: [FoodModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
        createData()
        setupUI()
        
        collectionView?.dataSource = self
        collectionView?.delegate = self
    }
    
    private func setupUI() {
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        collectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
        collectionView?.backgroundColor = UIColor.white
        collectionView?.register(FoodTypeViewCell.self, forCellWithReuseIdentifier: "FoodTypeViewCell")
        collectionView?.register(TitleViewCell.self, forCellWithReuseIdentifier: "TitleViewCell")
        collectionView?.register(PopularRestaurantsViewCell.self, forCellWithReuseIdentifier: "PopularRestaurantsViewCell")
        collectionView?.register(MostPopularItemsViewCell.self, forCellWithReuseIdentifier: "MostPopularItemsViewCell")
        collectionView?.register(RecentItemsViewCell.self, forCellWithReuseIdentifier: "RecentItemsViewCell")
        view.addSubview(collectionView ?? UICollectionView())
    }
    
    func createData() {
        foodModel.append(FoodModel(foodTitle: "Beef Wellington", foodImage: "beefwellington", foodType: "English", rating: 4.9, ratingCount: "(124 Ratings)", starImage: "star.fill"))
        foodModel.append(FoodModel(foodTitle: "Butter Chicken", foodImage: "butterchicken", foodType: "Indian", rating: 4.5, ratingCount: "(112 Ratings)", starImage: "star.fill"))
        foodModel.append(FoodModel(foodTitle: "Creme Brulee", foodImage: "cremebrulee", foodType: "Dessert", rating: 4.7, ratingCount: "(134 Ratings)", starImage: "star.fill"))
        foodModel.append(FoodModel(foodTitle: "Steak Tartare", foodImage: "steaktartare", foodType: "French", rating: 4.4, ratingCount: "(102 Ratings)", starImage: "star.fill"))
        foodModel.append(FoodModel(foodTitle: "Pizza Margherita", foodImage: "pizzamargherita", foodType: "Italian", rating: 4.9, ratingCount: "(207 Ratings)", starImage: "star.fill"))
    }
}

extension HomeVC : UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 7
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        } else if section == 1 {
            return 1
        } else if section == 2 {
            return 3
        } else if section == 3 {
            return 1
        } else if section == 4 {
            return 1
        } else if section == 5 {
            return 1
        }
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if indexPath.section == 0 {
            return CGSize(width: collectionView.frame.width, height: 130.0)
        } else if indexPath.section == 1 {
            return CGSize(width: collectionView.frame.width, height: 40.0)
        } else if indexPath.section == 2 {
            return CGSize(width: collectionView.frame.width, height: 270.0)
        } else if indexPath.section == 3 {
            return CGSize(width: collectionView.frame.width, height: 40.0)
        } else if indexPath.section == 4 {
            return CGSize(width: collectionView.frame.width, height: 200.0)
        } else if indexPath.section == 5 {
            return CGSize(width: collectionView.frame.width, height: 40.0)
        }
        return CGSize(width: collectionView.frame.width, height: 100.0)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.section == 0 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FoodTypeViewCell", for: indexPath) as! FoodTypeViewCell
            cell.foodItems = foodModel
            return cell
        } else if indexPath.section == 1 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TitleViewCell", for: indexPath) as! TitleViewCell
            cell.titleText.text = "Popular Restaurants"
            cell.viewAllButton.text = "View All"
            return cell
        } else if indexPath.section == 2 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PopularRestaurantsViewCell", for: indexPath) as! PopularRestaurantsViewCell
            cell.foodImage.image = UIImage(named: "\(foodModel[indexPath.row].foodImage)")
            cell.foodTitle.text = foodModel[indexPath.row].foodTitle
            cell.starImage.image = UIImage(systemName: foodModel[indexPath.row].starImage)
            cell.rating.text = String(foodModel[indexPath.row].rating)
            cell.ratingNumber.text = foodModel[indexPath.row].ratingCount
            cell.foodType.text = foodModel[indexPath.row].foodType
            return cell
        } else if indexPath.section == 3 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TitleViewCell", for: indexPath) as! TitleViewCell
            cell.titleText.text = "Most Popular"
            cell.viewAllButton.text = "View All"
            return cell
        } else if indexPath.section == 4 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MostPopularItemsViewCell", for: indexPath) as! MostPopularItemsViewCell
            cell.foodItems = foodModel
            return cell
        } else if indexPath.section == 5 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TitleViewCell", for: indexPath) as! TitleViewCell
            cell.titleText.text = "Recent Items"
            cell.viewAllButton.text = "View All"
            return cell
        }
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RecentItemsViewCell", for: indexPath) as! RecentItemsViewCell
        cell.foodImage.image = UIImage(named: "\(foodModel[indexPath.row].foodImage)")
        cell.foodTitle.text = foodModel[indexPath.row].foodTitle
        cell.starImage.image = UIImage(systemName: foodModel[indexPath.row].starImage)
        cell.rating.text = String(foodModel[indexPath.row].rating)
        cell.ratingNumber.text = foodModel[indexPath.row].ratingCount
        cell.foodType.text = foodModel[indexPath.row].foodType
        return cell
    }
}
