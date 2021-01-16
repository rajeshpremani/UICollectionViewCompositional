//
//  ViewController.swift
//  UICollectionViewDemo
//
//  Created by Rajesh Kumar Sahil on 17/01/2021.
//

import UIKit

class ViewController: UIViewController {
    
    private let collectionView = UICollectionView(
        frame: .zero,
        collectionViewLayout: UICollectionViewFlowLayout()
    )
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.frame = view.bounds
        collectionView.register(<#T##cellClass: AnyClass?##AnyClass?#>, forCellWithReuseIdentifier: <#T##String#>)
    }
    
}


