import UIKit

class DetailedViewController: UIViewController {
    private var dataSource: UICollectionViewDiffableDataSource<Section, Item>!

    @IBOutlet weak var collectionView: UICollectionView!
    
    lazy var collectionViewLayout: UICollectionViewLayout = {
        let layout = UICollectionViewCompositionalLayout { [weak self] (sectionIndex, enviornment) -> NSCollectionLayoutSection? in
            guard let self = self else {return nil}
            
            let snapshot = self.dataSource.snapshot()
            let sectionType = snapshot.sectionIdentifiers[sectionIndex].type
            
            switch sectionType {
                case .detailHeader:
                    let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .absolute(100))
                    
                    let item = NSCollectionLayoutItem(layoutSize: itemSize)
                
                    let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .absolute(100))
                
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
        
        initializeDV()

    }
    
    private func initializeDV() {
        setupDetailView()
        configureDataSource()
    }
    
    private func setupDetailView() {
        collectionView.register(DetailHeader.nib, forCellWithReuseIdentifier: DetailHeader.reuseIdentifier)
        
        collectionView.collectionViewLayout = collectionViewLayout
       
    }
    
    private func configureDataSource() {
        dataSource = UICollectionViewDiffableDataSource<Section, Item>(collectionView: collectionView) { [weak self]
            (collectionView, indexPath, item) in
            guard let self = self else { return nil }
            
            let snapshot = self.dataSource.snapshot()
            let sectionType = snapshot.sectionIdentifiers[indexPath.section].type
            
            switch sectionType {
            case .detailHeader:
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: DetailHeader.reuseIdentifier, for: indexPath)
                return cell
            default:
                return nil
            }
        }
        
        let sections = [
            Section(type: .detailHeader, items: [
                Item()])
        ]
        
        var snapshot = NSDiffableDataSourceSnapshot<Section, Item>()
        snapshot.appendSections(sections)
        sections.forEach { snapshot.appendItems($0.items, toSection: $0) }
        dataSource.apply(snapshot, animatingDifferences: false )
    }
}
