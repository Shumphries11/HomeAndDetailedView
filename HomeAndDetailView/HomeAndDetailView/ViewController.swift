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
                    let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .absolute(40))
                    
                    let item = NSCollectionLayoutItem(layoutSize: itemSize)
                
                    let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1))
                
                    let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitems: [item])
                    
                    let section = NSCollectionLayoutSection(group: group)
                    
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
            default:
                return nil
            }
        }
            
            let sections = [
                Section(type: .header, items: [
                    Item()])
            ]
            
            var snapshot = NSDiffableDataSourceSnapshot<Section, Item>()
            snapshot.appendSections(sections)
            sections.forEach { snapshot.appendItems($0.items, toSection: $0) }
            dataSource.apply(snapshot, animatingDifferences: false )
        }
    }




