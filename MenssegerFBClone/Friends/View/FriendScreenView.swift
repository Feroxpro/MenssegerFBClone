//
//  FriendScreenView.swift
//  MenssegerFBClone
//
//  Created by Felipe Domingos on 03/04/23.
//

import Foundation
import UIKit

class FriendScreenView: BaseView {
    
    let identifier: String = "FriendScreenViewCell"
    
    lazy var collectionView: UICollectionView = {
        let collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: UICollectionViewLayout.init())
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout.init()
        collectionView.setCollectionViewLayout(layout, animated: false)
        collectionView.backgroundColor = .white
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.alwaysBounceVertical = true
        collectionView.register(FriendScreenViewCell.self, forCellWithReuseIdentifier: identifier)
        return collectionView
    }()
    
    public func configProtocolsCollectionView(delegate: UICollectionViewDelegate, dataSource: UICollectionViewDataSource){
        self.collectionView.delegate = delegate
        self.collectionView.dataSource = dataSource
    }
    override func addSubviews() {
        addSubview(collectionView)
        
    }
    
    override func configureConstraints() {
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: topAnchor),
            collectionView.leadingAnchor.constraint(equalTo: leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: trailingAnchor),
            collectionView.bottomAnchor.constraint(equalTo: bottomAnchor),
        
        
        ])
    }
}
