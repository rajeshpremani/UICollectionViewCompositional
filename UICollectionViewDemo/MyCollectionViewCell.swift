//
//  MyCollectionViewCell.swift
//  UICollectionViewDemo
//
//  Created by Rajesh Kumar Sahil on 17/01/2021.
//

import Foundation
import UIKit

class MyCollectionViewCell: UICollectionViewCell {
    static let identifier = "MyCollectionViewCell"
    
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(imageView)
        
        let images:[UIImage] = [#imageLiteral(resourceName: "3"),#imageLiteral(resourceName: "2"),#imageLiteral(resourceName: "1"),#imageLiteral(resourceName: "4"),#imageLiteral(resourceName: "5")].compactMap({ $0 })
        imageView.image = images.randomElement()
        contentView.clipsToBounds = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        imageView.frame = contentView.bounds
    }
    
}
