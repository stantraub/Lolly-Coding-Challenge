//
//  UserCell.swift
//  Lolly Coding Challenge
//
//  Created by Stanley Traub on 1/11/21.
//

import UIKit

class UserCell: UICollectionViewCell {
    
    // MARK: - Properties
    
    static let identifier = "UserCell"
    
    var viewModel: UserViewModel? {
        didSet { configure() }
    }
    
    private let nameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16)
        label.textColor = .label
        return label
    }()
    
    // MARK: - Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .secondarySystemBackground
        
        layer.cornerRadius = 25
        layer.cornerCurve = .continuous
        
        addSubview(nameLabel)
        nameLabel.centerY(inView: self, leftAnchor: leftAnchor, paddingLeft: 16)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Helpers
    
    private func configure() {
        guard let viewModel = viewModel else { return }
        nameLabel.text = viewModel.name
    }
}
