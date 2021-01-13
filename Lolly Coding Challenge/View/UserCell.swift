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
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.textColor = .label
        return label
    }()
    
    private let cityLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = .label
        return label
    }()
    
    private let birthdateLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = .label
        return label
    }()
    
    // MARK: - Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .secondarySystemBackground
        
        layer.cornerRadius = 25
        layer.cornerCurve = .continuous
        
        addShadow()
        
        addSubview(nameLabel)
        nameLabel.centerY(inView: self, leftAnchor: leftAnchor, paddingLeft: 16)
        
        addSubview(cityLabel)
        cityLabel.center(inView: self)
        
        addSubview(birthdateLabel)
        birthdateLabel.centerY(inView: self, rightAnchor: rightAnchor, paddingRight: 16)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Helpers
    
    private func configure() {
        guard let viewModel = viewModel else { return }
        
        nameLabel.text = viewModel.name
        cityLabel.text = viewModel.city
        birthdateLabel.text = viewModel.birthdate
    }
}
