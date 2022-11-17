//
//  ViewController.swift
//  Weather Application
//
//  Created by Ella on 16.11.2022.
//

import UIKit

protocol SelfConfiguringCell {
    static var reuseIdentifier: String { get }
    func configure(with item: Item)
}

class ViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    private var dataSource: UICollectionViewDiffableDataSource<Section, Item>!
    private var snapshot = NSDiffableDataSourceSnapshot<Section, Item>()
    private var sections: [Section] = []
    
    lazy var collectionViewLayout: UICollectionViewLayout = {
        let layout = UICollectionViewCompositionalLayout { [weak self] (sectionsIndex, environment) ->
            NSCollectionLayoutSection? in
            
            guard let self = self else {return nil}
            let snapshot = self.dataSource.snapshot()
            let sectionKind = snapshot.sectionIdentifiers[sectionsIndex].kind
            
            switch sectionKind {
            case .header: return LayoutSectionFactory.full(with: 300)
            default: return nil
            }
        }
        
        let config = UICollectionViewCompositionalLayoutConfiguration()
        config.interSectionSpacing = 30
        layout.configuration = config
        
        return layout
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func initialize() {
        setupCollectionView()
    }
    
    func setupCollectionView() {
        let cells: [RegisterableView] = [
            .nib(TodayForecastCellView.self)
        ]
        
        collectionView.register(cells: cells)
        collectionView.collectionViewLayout = collectionViewLayout
    }
    func createDate() {
        sections = [
            Section(kind: .header, items: [Item()])
        ]
        snapshot = NSDiffableDataSourceSnapshot<Section, Item>()
        snapshot.appendSections(sections)
        sections.forEach {snapshot.appendItems($0.items, toSection: $0)}
        dataSource.apply(snapshot, animatingDifferences: false)
    }
    
}
