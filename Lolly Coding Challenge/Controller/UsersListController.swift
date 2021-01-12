//
//  ViewController.swift
//  Lolly Coding Challenge
//
//  Created by Stanley Traub on 1/11/21.
//

import UIKit

final class UsersListController: UICollectionViewController {
    
    // MARK: - Properties
    
    private let users = [User]()
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    private func configureUI() {
        collectionView.backgroundColor = .systemBackground
        collectionView.register(UserCell.self, forCellWithReuseIdentifier: UserCell.identifier)
    }
}

// MARK: - UICollectionViewDelegate/DataSource

extension UsersListController {
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: UserCell.identifier, for: indexPath) as! UserCell
        return cell
    }

}

// MARK: - UICollectionViewFlowLayout

extension UsersListController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width: CGFloat = collectionView.frame.width * 0.8
        let height: CGFloat = 150
        return CGSize(width: width, height: height)
    }
}

