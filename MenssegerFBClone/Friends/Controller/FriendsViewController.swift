//
//  ViewController.swift
//  MenssegerFBClone
//
//  Created by Felipe Domingos on 03/04/23.
//

import UIKit

class FriendsViewController: UIViewController {
    
    let friendScreenView = FriendScreenView()
    
    override func loadView() {
        self.view = self.friendScreenView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.friendScreenView.configProtocolsCollectionView(delegate: self, dataSource: self)
        navigationItem.title = "Bate-papos"
    }
}

extension FriendsViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: friendScreenView.identifier, for: indexPath) as! FriendScreenViewCell
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSizeMake(view.frame.width, 100)
    }

    
}
