//
//  MainViewUIKit.swift
//  HW_23
//
//  Created by Виктор Басиев on 21.12.2022.
//

import UIKit

class MainViewUIKit: UIViewController {
    
// MARK: - Elements
    
    let searchController = UISearchController(searchResultsController: nil)
    
    lazy var collectionView: UICollectionView = {
        let viewLayout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: view.frame, collectionViewLayout: viewLayout)
        return collectionView
    }()
    
    private var models: [[SearchModel]] = [SearchModel.search]
    
// MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupHierarchy()
        setupLayouts()
        setupCollection()
        collectionView.reloadData()
    }
    
// MARK: - Private functions
    
    private func setupView() {
        view.backgroundColor = .white
        navigationItem.title = "Поиск"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.searchController = searchController
        navigationItem.searchController?.searchBar.placeholder = "Ваша медиатека"
    }
    
    private func setupHierarchy() {
        view.addSubview(collectionView)
    }
    
    private func setupLayouts() {
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: view.topAnchor),
            collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            collectionView.leftAnchor.constraint(equalTo: view.leftAnchor),
            collectionView.rightAnchor.constraint(equalTo: view.rightAnchor)
        ])
    }
    
    private func setupCollection() {
        collectionView.collectionViewLayout = createLayout()
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(SearchViewCell.self, forCellWithReuseIdentifier: SearchViewCell.identifier)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    }
    
// MARK: - CompositionalLayout
    
    private func createLayout() -> UICollectionViewLayout {
        return UICollectionViewCompositionalLayout { (sectionNumber, _) -> NSCollectionLayoutSection? in

            let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
                                                  heightDimension: .fractionalHeight(0.98))
            let layoutItem = NSCollectionLayoutItem(layoutSize: itemSize)
            layoutItem.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 5, bottom: 5, trailing: 5)
            
            let groupSize = NSCollectionLayoutSize(widthDimension:  .fractionalWidth(1),
                                                   heightDimension: .absolute(100))
            
            let layoutGroup = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitem: layoutItem, count: 2)
                            
            let sectionLayout = NSCollectionLayoutSection(group: layoutGroup)
            sectionLayout.contentInsets = NSDirectionalEdgeInsets(top: 10, leading: 10, bottom: 80, trailing: 10)

            return sectionLayout
        }
    }
}
    
// MARK: - Data Source and Delegate

extension MainViewUIKit: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return models.count
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return models[section].count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let model = models[indexPath.section][indexPath.row]
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SearchViewCell.identifier, for: indexPath) as? SearchViewCell else {
            return UICollectionViewCell()
        }
        cell.configure(with: model)
        return cell
    }
}

