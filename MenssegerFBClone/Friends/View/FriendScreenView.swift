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
        collectionView.register(FriendScreenViewCell.self, forCellWithReuseIdentifier: identifier)
        return collectionView
    }()
}
