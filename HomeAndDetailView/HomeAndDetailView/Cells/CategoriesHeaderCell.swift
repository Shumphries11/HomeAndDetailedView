import UIKit

class CategoriesHeaderCell: UICollectionViewCell {
    
    
    static let reuseIdentifier = String(describing: CategoriesHeaderCell.self)
    static let nib = UINib(nibName: String(describing: CategoriesHeaderCell.self), bundle: nil)
        
    @IBOutlet weak var categoriesHeader: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

}
