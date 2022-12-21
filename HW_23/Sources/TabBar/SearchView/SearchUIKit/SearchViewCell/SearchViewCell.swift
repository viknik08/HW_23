//
//  SearchViewCell.swift
//  HW_23
//
//  Created by Виктор Басиев on 21.12.2022.
//

import UIKit

class SearchViewCell: UICollectionViewCell {
    
    // MARK: - Elements
    
    static let identifier = "SectionCollectionViewCell"
    private var model: SearchCollection = SearchCollection(name: "", searchCell: [[SearchCellModel(icon: "", name: "", additionalInfo: "")]])
    
    let buttonImageView: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.contentMode = .scaleToFill
        button.layer.cornerRadius = 10
        button.clipsToBounds = true
        return button
    }()
    
    let albumImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleToFill
        image.layer.cornerRadius = 10
        image.clipsToBounds = true
        return image
    }()
    
    // MARK: - Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupHierarchy()
        setupLayouts()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        albumImageView.image = nil
    }
    
    // MARK: - Private functions
    
    private func setupHierarchy() {
        contentView.addSubview(buttonImageView)
    }
    
    private func setupLayouts() {
        NSLayoutConstraint.activate([
            buttonImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            buttonImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            buttonImageView.topAnchor.constraint(equalTo: contentView.topAnchor),
            buttonImageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            buttonImageView.heightAnchor.constraint(equalToConstant: 80),
            buttonImageView.widthAnchor.constraint(equalToConstant: 190)
        ])
    }
    
    // MARK: - Configure cell
    
    public func configure(with model: SearchModel) {
        buttonImageView.setImage(UIImage(named: model.icon), for: .normal)
        if let _ = model.searchCell {
            buttonImageView.addTarget(self, action: #selector(tapButtonAction), for: .touchUpInside)
        }
        
        self.model = model.searchCell ?? SearchCollection(name: "", searchCell: [[SearchCellModel(icon: "",
                                                                                             name: "",
                                                                                             additionalInfo: "")
                                                                               ]])
        
    }
    
    // MARK: - Actions
    
    @objc func tapButtonAction() {
    }
}
