import UIKit

class ViewController: UIViewController {
    private var dataSource: UICollectionViewDiffableDataSource<Section, Item>!
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    lazy var collectionViewLayout: UICollectionViewLayout = {
        let layout = UICollectionViewCompositionalLayout { [weak self] (sectionIndex, enviornment) -> NSCollectionLayoutSection? in
            guard let self = self else {return nil}
            
            let snapshot = self.dataSource.snapshot()
            let sectionType = snapshot.sectionIdentifiers[sectionIndex].type
            
            switch sectionType {
                case .header:
                    let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .estimated(50))
                    
                    let item = NSCollectionLayoutItem(layoutSize: itemSize)
                
                    let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .estimated(50))
                
                    let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitems: [item])
                    group.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 5, bottom: 0, trailing: 5)
                    
                    let section = NSCollectionLayoutSection(group: group)
                    section.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: 15, trailing: 0)
                    
                    return section
            case .search:
                let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .estimated(50))
                
                let item = NSCollectionLayoutItem(layoutSize: itemSize)
            
                let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .estimated(50))
            
                let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitems: [item])
                group.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 5, bottom: 0, trailing: 5)
                
                let section = NSCollectionLayoutSection(group: group)
                section.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: 15, trailing: 0)
                section.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 17.5, bottom: 15, trailing: 17.5)
                
                return section
            case .featuredHeader:
                let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .estimated(50))
                
                let item = NSCollectionLayoutItem(layoutSize: itemSize)
            
                let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .estimated(50))
            
                let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitems: [item])
                group.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 5, bottom: 0, trailing: 5)
                
                let section = NSCollectionLayoutSection(group: group)
                section.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: 15, trailing: 0)
                
                return section
                
            case .featured1:
                let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .absolute(235))
                
                let item = NSCollectionLayoutItem(layoutSize: itemSize)
            
                let groupSize = NSCollectionLayoutSize(widthDimension: .absolute(183), heightDimension: .absolute(235))
            
                let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
                
                group.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 24)
                
                let section = NSCollectionLayoutSection(group: group)
                section.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 24, bottom: 8, trailing: 0)
                section.orthogonalScrollingBehavior = .groupPaging

                return section
                
            case .recommendedHeader:
                let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .estimated(50))
                
                let item = NSCollectionLayoutItem(layoutSize: itemSize)
            
                let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .estimated(50))
            
                let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitems: [item])
                group.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 24, bottom: 0, trailing: 5)
                
                let section = NSCollectionLayoutSection(group: group)
                section.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: 15, trailing: 0)
                
                return section
                
            case .recommended:
                let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .absolute(239))
                
                let item = NSCollectionLayoutItem(layoutSize: itemSize)
            
                let groupSize = NSCollectionLayoutSize(widthDimension: .absolute(327), heightDimension: .absolute(239))
            
                let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitems: [item])
                
                group.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 24)
                
                let section = NSCollectionLayoutSection(group: group)
                section.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 24, bottom: 8, trailing: 0)
                

                return section
                
            case .latestHeader:
                let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .estimated(50))
                
                let item = NSCollectionLayoutItem(layoutSize: itemSize)
            
                let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .estimated(50))
            
                let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitems: [item])
                group.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 24, bottom: 0, trailing: 5)
                
                let section = NSCollectionLayoutSection(group: group)
                section.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: 15, trailing: 0)
                
                return section
                
            case .latest:
                let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .absolute(95))
                
                let item = NSCollectionLayoutItem(layoutSize: itemSize)
            
                let groupSize = NSCollectionLayoutSize(widthDimension: .absolute(321), heightDimension: .absolute(95))
            
                let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitems: [item])
                
                group.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 24)
                
                let section = NSCollectionLayoutSection(group: group)
                section.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 24, bottom: 8, trailing: 0)
              

                return section
                
            case .categoriesHeader:
                let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .estimated(50))
                
                let item = NSCollectionLayoutItem(layoutSize: itemSize)
            
                let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .estimated(50))
            
                let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitems: [item])
                group.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 24, bottom: 0, trailing: 5)
                
                let section = NSCollectionLayoutSection(group: group)
                section.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: 15, trailing: 0)
                
                return section
                
            case .categories:
                let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .absolute(130))
                
                let item = NSCollectionLayoutItem(layoutSize: itemSize)
            
                let groupSize = NSCollectionLayoutSize(widthDimension: .absolute(97), heightDimension: .absolute(130))
            
                let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
                
                group.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 24)
                
                let section = NSCollectionLayoutSection(group: group)
                section.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 24, bottom: 8, trailing: 0)
                section.orthogonalScrollingBehavior = .groupPaging

                return section
                
                default: return nil
                
            }
        }
        return layout
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initialize()
        
    }
    
    private func initialize() {
        setupCollectionView()
        configureDataSource()
    }
    
    private func setupCollectionView() {
        collectionView.register(HomeHeader.nib, forCellWithReuseIdentifier: HomeHeader.reuseIdentifier)
        
        collectionView.register(SearchCell.nib, forCellWithReuseIdentifier: SearchCell.reuseIdentifier)
        
        collectionView.register(FeaturedHeaderCell.nib, forCellWithReuseIdentifier: FeaturedHeaderCell.reuseIdentifier)
        
        collectionView.register(FeaturedCell1.nib, forCellWithReuseIdentifier: FeaturedCell1.reuseIdentifier)
        
        collectionView.register(FeaturedCell2.nib, forCellWithReuseIdentifier: FeaturedCell2.reuseIdentifier)
        
        collectionView.register(RecommendedHeaderCell.nib, forCellWithReuseIdentifier: RecommendedHeaderCell.reuseIdentifier)
        
        collectionView.register(RecommendedCell.nib, forCellWithReuseIdentifier: RecommendedCell.reuseIdentifier)
        
        collectionView.register(LatestHeaderCell.nib, forCellWithReuseIdentifier: LatestHeaderCell.reuseIdentifier)
        
        collectionView.register(LatestCell.nib, forCellWithReuseIdentifier: LatestCell.reuseIdentifier)
        
        collectionView.register(CategoriesHeaderCell.nib, forCellWithReuseIdentifier: CategoriesHeaderCell.reuseIdentifier)
        
        collectionView.register(CategoriesCell.nib, forCellWithReuseIdentifier: CategoriesCell.reuseIdentifier)
        
        collectionView.collectionViewLayout = collectionViewLayout
        
    }
    
    private func configureDataSource() {
        dataSource = UICollectionViewDiffableDataSource<Section, Item>(collectionView: collectionView) { [weak self]
            (collectionView, indexPath, item) in
            guard let self = self else { return nil }
            
            let snapshot = self.dataSource.snapshot()
            let sectionType = snapshot.sectionIdentifiers[indexPath.section].type
            
            switch sectionType {
            case .header:
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: HomeHeader.reuseIdentifier, for: indexPath)
                return cell
            case .search:
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SearchCell.reuseIdentifier, for: indexPath)
                return cell
            case .featuredHeader:
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: FeaturedHeaderCell.reuseIdentifier, for: indexPath)
                return cell
            case .featured1:
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: FeaturedCell1.reuseIdentifier, for: indexPath)
                return cell
            case .recommendedHeader:
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: RecommendedHeaderCell.reuseIdentifier, for: indexPath)
                return cell
            case .recommended:
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: RecommendedCell.reuseIdentifier, for: indexPath)
                return cell
            case .latestHeader:
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: LatestHeaderCell.reuseIdentifier, for: indexPath)
                return cell
            case .latest:
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: LatestCell.reuseIdentifier, for: indexPath)
                return cell
            case .categoriesHeader:
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoriesHeaderCell.reuseIdentifier, for: indexPath)
                return cell
            case .categories:
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoriesCell.reuseIdentifier, for: indexPath)
                return cell
            default:
                return nil
            }
        }
            
            let sections = [
                Section(type: .header, items: [Item()]),
                Section(type: .search, items: [Item()]),
                Section(type: .featuredHeader, items: [Item()]),
                Section(type: .featured1, items: [
                    Item(), Item(), Item()]),
                Section(type: .recommendedHeader, items: [Item()]),
                Section(type: .recommended, items: [Item()]),
                Section(type: .latestHeader, items: [Item()]),
                Section(type: .latest, items: [
                    Item(), Item(), Item(), Item(), Item()]),
                Section(type: .categoriesHeader, items: [Item()]),
                Section(type: .categories, items: [
                    Item(),Item(), Item(), Item(), Item()]),
            ]
            
            var snapshot = NSDiffableDataSourceSnapshot<Section, Item>()
            snapshot.appendSections(sections)
            sections.forEach { snapshot.appendItems($0.items, toSection: $0) }
            dataSource.apply(snapshot, animatingDifferences: false )
        }
    }




