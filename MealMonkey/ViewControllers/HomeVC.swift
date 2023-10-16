//
//  HomeVC.swift
//  MealMonkey
//
//  Created by Gökalp on 15.10.2023.
//

import UIKit

class HomeVC : UIViewController {
    
    var collectionView: UICollectionView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
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
            return cell
        } else if indexPath.section == 1 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TitleViewCell", for: indexPath) as! TitleViewCell
            cell.titleText.text = "Popular Restaurants"
            cell.viewAllButton.text = "View All"
            return cell
        } else if indexPath.section == 2 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PopularRestaurantsViewCell", for: indexPath) as! PopularRestaurantsViewCell
            cell.foodImage.image = UIImage(named: "beefwellington")
            cell.foodTitle.text = "Beef Wellington"
            cell.starImage.image = UIImage(systemName: "star.fill")
            cell.rating.text = "4.9"
            cell.ratingNumber.text = "(124 Ratings)"
            cell.foodType.text = "Western Food"
            return cell
        } else if indexPath.section == 3 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TitleViewCell", for: indexPath) as! TitleViewCell
            cell.titleText.text = "Most Popular"
            cell.viewAllButton.text = "View All"
            return cell
        } else if indexPath.section == 4 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MostPopularItemsViewCell", for: indexPath) as! MostPopularItemsViewCell
            return cell
        } else if indexPath.section == 5 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TitleViewCell", for: indexPath) as! TitleViewCell
            cell.titleText.text = "Recent Items"
            cell.viewAllButton.text = "View All"
            return cell
        }
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RecentItemsViewCell", for: indexPath) as! RecentItemsViewCell
        cell.foodImage.image = UIImage(named: "beefwellington")
        cell.foodTitle.text = "Beef Wellington"
        cell.starImage.image = UIImage(systemName: "star.fill")
        cell.rating.text = "4.9"
        cell.ratingNumber.text = "(124 Ratings)"
        cell.foodType.text = "Western Food"
        return cell
    }
}
