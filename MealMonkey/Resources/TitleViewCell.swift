//
//  TitleViewCell.swift
//  MealMonkey
//
//  Created by Gökalp on 15.10.2023.
//

import UIKit

class TitleViewCell : UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addViews()
    }
        
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let titleText: UILabel = {
        let text = UILabel()
        text.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        text.textColor = .mealMonkeyGray
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    
    let viewAllButton: UILabel = {
        let button = UILabel()
        button.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        button.textColor = .mealMonkeyOrange
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    func addViews() {
        backgroundColor = .white
        
        addSubview(titleText)
        addSubview(viewAllButton)
        
        titleText.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 5).isActive = true
        titleText.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16).isActive = true
        titleText.widthAnchor.constraint(equalTo: titleText.widthAnchor).isActive = true
        titleText.textAlignment = .left
        
        viewAllButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 5).isActive = true
        viewAllButton.leadingAnchor.constraint(equalTo: titleText.trailingAnchor, constant: 16).isActive = true
        viewAllButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16).isActive = true
        viewAllButton.widthAnchor.constraint(equalTo: viewAllButton.widthAnchor).isActive = true
        viewAllButton.textAlignment = .right
    }
 }
